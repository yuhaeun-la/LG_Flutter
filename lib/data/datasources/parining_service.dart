// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'package:little_guardian/data/datasources/firebase_manager.dart';
//
// class WebRTCService {
//   final FirebaseManager _firebaseManager = FirebaseManager();
//   RTCPeerConnection? _peerConnection;
//   MediaStream? _localStream;
//
//   // PeerConnection 생성 및 오디오 스트림 시작
//   Future<void> createPeerConnection(String sessionId) async {
//     _peerConnection = await createPeerConnection({
//       'iceServers': [
//         {'urls': 'stun:stun.l.google.com:19302'}
//       ]
//     });
//
//     // 오디오 스트림 생성
//     _localStream = await navigator.mediaDevices.getUserMedia({'audio': true});
//     _localStream?.getTracks().forEach((track) {
//       _peerConnection?.addTrack(track, _localStream!);
//     });
//
//     // Offer 생성 및 저장
//     RTCSessionDescription offer = await _peerConnection!.createOffer();
//     await _peerConnection!.setLocalDescription(offer);
//     await _firebaseManager.saveSDP(sessionId, offer.sdp, 'offer');
//
//     // ICE 후보자 생성 시 Firebase에 저장
//     _peerConnection!.onIceCandidate = (RTCIceCandidate candidate) {
//       _firebaseManager.saveIceCandidate(sessionId, {
//         'candidate': candidate.candidate,
//         'sdpMid': candidate.sdpMid,
//         'sdpMlineIndex': candidate.sdpMlineIndex,
//       });
//     };
//   }
//
//   // Remote Description 설정 (Answer 수신)
//   Future<void> setRemoteDescription(String sessionId) async {
//     var sdpData = await _firebaseManager.readSDP(sessionId);
//     RTCSessionDescription description = RTCSessionDescription(sdpData['sdp'], sdpData['type']);
//     await _peerConnection?.setRemoteDescription(description);
//   }
//
//   // ICE 후보자 추가
//   Future<void> addIceCandidate(RTCIceCandidate candidate) async {
//     await _peerConnection?.addCandidate(candidate);
//   }
//
//   // 종료 및 정리
//   Future<void> dispose() async {
//     await _localStream?.dispose();
//     await _peerConnection?.close();
//     _peerConnection = null;
//     _localStream = null;
//   }
// }

