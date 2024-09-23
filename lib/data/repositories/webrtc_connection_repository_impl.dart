import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:little_guardian/domain/repository/webrtc_connection_repository_impl.dart';
import '../datasources/firebase_manager.dart';

class WebRTCConnectionRepositoryImpl implements WebRTCConnectionRepository {
  final FirebaseManager _firebaseManager;
  RTCPeerConnection? _peerConnection;

  WebRTCConnectionRepositoryImpl(this._firebaseManager);

  @override
  Future<void> createOffer(String sessionId) async {
    _peerConnection = await createPeerConnection({
      'iceServers': [
        {'urls': 'stun:stun.l.google.com:19302'}
      ]
    });

    RTCSessionDescription offer = await _peerConnection!.createOffer();
    await _peerConnection!.setLocalDescription(offer);

    // Firebase에 Offer 저장
    await _firebaseManager.saveSDP(sessionId, offer.sdp, 'offer');
  }

  @override
  Future<void> createAnswer(String sessionId) async {
    _peerConnection = await createPeerConnection({
      'iceServers': [
        {'urls': 'stun:stun.l.google.com:19302'}
      ]
    });

    // Firebase에서 offer 정보 가져오기
    final offerData = await _firebaseManager.readSDP(sessionId);
    RTCSessionDescription offer = RTCSessionDescription(offerData['sdp'], 'offer');
    await _peerConnection!.setRemoteDescription(offer);

    // Answer 생성 및 저장
    RTCSessionDescription answer = await _peerConnection!.createAnswer();
    await _peerConnection!.setLocalDescription(answer);

    // Firebase에 Answer 저장
    await _firebaseManager.saveSDP(sessionId, answer.sdp, 'answer');
  }

  @override
  Future<void> setRemoteDescription(String sessionId) async {
    final sdpData = await _firebaseManager.readSDP(sessionId);
    RTCSessionDescription description = RTCSessionDescription(sdpData['sdp'], sdpData['type']);
    await _peerConnection?.setRemoteDescription(description);
  }

  @override
  Future<void> addIceCandidate(String sessionId, RTCIceCandidate candidate) async {
    _peerConnection?.addCandidate(candidate);
  }

  @override
  Stream<List<RTCIceCandidate>> listenToIceCandidates(String sessionId) {
    return _firebaseManager.getIceCandidates(sessionId).map((snapshot) {
      return snapshot.docs.map((doc) {
        return RTCIceCandidate(
          doc['candidate'],
          doc['sdpMid'],
          doc['sdpMLineIndex'],
        );
      }).toList();
    });
  }
}
