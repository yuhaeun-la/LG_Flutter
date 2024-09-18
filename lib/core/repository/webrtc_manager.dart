// import 'package:flutter_webrtc/flutter_webrtc.dart';
// import 'firebase_manager.dart';
//
// class WebRTCManager {
//   final FirebaseManager _firebaseManager;
//   RTCPeerConnection? _peerConnection;
//
//   WebRTCManager(this._firebaseManager);
//
//   Future<void> createOffer(String sessionId) async {
//     _peerConnection = await createPeerConnection({...});
//
//     RTCSessionDescription offer = await _peerConnection!.createOffer();
//     await _peerConnection!.setLocalDescription(offer);
//
//     await _firebaseManager.saveWebRTCSession(sessionId, {
//       'sdp': offer.sdp,
//       'type': offer.type,
//     });
//   }
//
//   Future<void> handleIceCandidate(String sessionId) async {
//     _peerConnection!.onIceCandidate = (RTCIceCandidate candidate) async {
//       await _firebaseManager.saveIceCandidate(sessionId, {
//         'candidate': candidate.candidate,
//         'sdpMid': candidate.sdpMid,
//         'sdpMlineIndex': candidate.sdpMlineIndex,
//       });
//     };
//   }
//
//   Future<void> startListening() async {
//     // 소리 듣기 시작
//   }
//
//   Future<void> stopListening() async {
//     // 소리 듣기 중지
//     _peerConnection?.close();
//   }
// }
