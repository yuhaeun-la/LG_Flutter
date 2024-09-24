import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:little_guardian/domain/repository/webrtc_connection_repository.dart';

class WebRTCConnectionRepositoryImpl implements WebRTCConnectionRepository {
  final _firestore = FirebaseFirestore.instance;
  RTCPeerConnection? _peerConnection;

  @override
  Future<void> createOffer(String sessionId) async {
    Map<String, dynamic> configuration = {
      "iceServers": [
        {"urls": "stun:stun.l.google.com:19302"}, // Google STUN 서버 사용
      ]
    };

    Map<String, dynamic> constraints = {
      "mandatory": {},
      "optional": [
        {"DtlsSrtpKeyAgreement": true},
      ],
    };

    _peerConnection = await createPeerConnection(configuration, constraints);

    RTCSessionDescription offer = await _peerConnection!.createOffer();
    await _peerConnection!.setLocalDescription(offer);

    // Firebase에 Offer 저장
    await _firestore.collection('sessions').doc(sessionId).set({
      'parentSdp': {'type': offer.type, 'sdp': offer.sdp},
      'createdAt': FieldValue.serverTimestamp(),
      'isActive': true,
    }, SetOptions(merge: true));

    // ICE 후보 추가 시 Firebase에 저장
    _peerConnection!.onIceCandidate = (RTCIceCandidate candidate) {
      _firestore.collection('iceCandidates').doc(sessionId).collection('parent').add({
        'candidate': candidate.candidate,
        'sdpMid': candidate.sdpMid,
        'sdpMLineIndex': candidate.sdpMLineIndex,
        'role': 'parent',
      });
    };
  }

  @override
  Future<void> createAnswer(String sessionId) async {
    Map<String, dynamic> configuration = {
      "iceServers": [
        {"urls": "stun:stun.l.google.com:19302"},
      ]
    };

    Map<String, dynamic> constraints = {
      "mandatory": {},
      "optional": [
        {"DtlsSrtpKeyAgreement": true},
      ],
    };

    _peerConnection = await createPeerConnection(configuration, constraints);

    // Firebase에서 Offer 가져오기
    DocumentSnapshot offerSnapshot = await _firestore.collection('sessions').doc(sessionId).get();
    if (offerSnapshot.exists) {
      var offerData = offerSnapshot['parentSdp'];
      RTCSessionDescription offer = RTCSessionDescription(offerData['sdp'], offerData['type']);
      await _peerConnection!.setRemoteDescription(offer);
    }

    // Answer 생성 및 Firebase에 등록
    RTCSessionDescription answer = await _peerConnection!.createAnswer();
    await _peerConnection!.setLocalDescription(answer);

    await _firestore.collection('sessions').doc(sessionId).update({
      'childSdp': {'type': answer.type, 'sdp': answer.sdp},
    });

    // ICE 후보 추가 시 Firebase에 저장
    _peerConnection!.onIceCandidate = (RTCIceCandidate candidate) {
      _firestore.collection('iceCandidates').doc(sessionId).collection('child').add({
        'candidate': candidate.candidate,
        'sdpMid': candidate.sdpMid,
        'sdpMLineIndex': candidate.sdpMLineIndex,
        'role': 'child',
      });
    };
  }

  @override
  Future<void> closeConnection() async {
    if (_peerConnection != null) {
      await _peerConnection!.close();
      _peerConnection = null;
    }
  }
}
