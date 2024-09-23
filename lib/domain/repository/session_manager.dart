// import 'firebase_manager.dart';
// import 'package:flutter_webrtc/flutter_webrtc.dart';
//
// class SessionManager {
//   final FirebaseManager _firebaseManager;
//   RTCPeerConnection? _peerConnection;
//
//   SessionManager(this._firebaseManager);
//
//   // 세션 생성
//   Future<void> createSession(String sessionId) async {
//     _peerConnection = await createPeerConnection({...});
//
//     RTCSessionDescription offer = await _peerConnection!.createOffer();
//     await _peerConnection!.setLocalDescription(offer);
//
//     await _firebaseManager.writeData('sessions', sessionId, {
//       'sdp': offer.sdp,
//       'type': offer.type,
//     });
//   }
//
//   // ICE 후보 관리
//   Future<void> addIceCandidate(String sessionId, RTCIceCandidate candidate) async {
//     await _firebaseManager.writeSubCollectionData('sessions', sessionId, 'iceCandidates', {
//       'candidate': candidate.candidate,
//       'sdpMid': candidate.sdpMid,
//       'sdpMlineIndex': candidate.sdpMlineIndex,
//     });
//   }
//
//   // 세션 종료
//   Future<void> closeSession() async {
//     _peerConnection?.close();
//     _peerConnection = null;
//   }
// }
