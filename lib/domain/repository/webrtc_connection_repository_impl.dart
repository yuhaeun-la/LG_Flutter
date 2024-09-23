import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'dart:async';

class WebRTCService {
  RTCPeerConnection? _peerConnection;
  MediaStream? _localStream;

  // ICE 후보자를 위한 스트림 컨트롤러
  final _iceCandidateStreamController = StreamController<RTCIceCandidate>.broadcast();

  // ICE 후보자 스트림
  Stream<RTCIceCandidate> get iceCandidateStream => _iceCandidateStreamController.stream;

  // Offer 생성 메서드
  Future<RTCSessionDescription> createOffer() async {
    _peerConnection = await createPeerConnection({
      'iceServers': [
        {'urls': ['stun:stun.l.google.com:19302']}
      ],
    });

    _localStream = await navigator.mediaDevices.getUserMedia({'audio': true});
    _localStream?.getTracks().forEach((track) {
      _peerConnection?.addTrack(track, _localStream!);
    });

    RTCSessionDescription offer = await _peerConnection!.createOffer();
    await _peerConnection!.setLocalDescription(offer);

    _peerConnection!.onIceCandidate = (RTCIceCandidate candidate) {
      _iceCandidateStreamController.add(candidate);
    };

    return offer;
  }

  // Remote Description 설정 메서드
  Future<void> setRemoteDescription(RTCSessionDescription description) async {
    await _peerConnection?.setRemoteDescription(description);
  }

  // ICE 후보자 추가 메서드
  Future<void> addIceCandidate(RTCIceCandidate candidate) async {
    await _peerConnection?.addCandidate(candidate);
  }

  // 리소스 정리
  Future<void> dispose() async {
    await _localStream?.dispose();
    await _peerConnection?.close();
    _peerConnection = null;
    _localStream = null;
    _iceCandidateStreamController.close();
  }
}
