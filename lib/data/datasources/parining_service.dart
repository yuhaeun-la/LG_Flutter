import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseManager {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // SDP 저장
  Future<void> saveSDP(String sessionId, String sdp, String type) async {
    await _firestore.collection('sessions').doc(sessionId).set({
      'sdp': sdp,
      'type': type,
    });
  }

  // SDP 가져오기
  Future<DocumentSnapshot> readSDP(String sessionId) async {
    return await _firestore.collection('sessions').doc(sessionId).get();
  }

  // ICE 후보자 저장
  Future<void> saveIceCandidate(String sessionId, Map<String, dynamic> candidateData) async {
    await _firestore.collection('sessions').doc(sessionId).collection('iceCandidates').add(candidateData);
  }

  // ICE 후보자 가져오기
  Stream<QuerySnapshot> getIceCandidates(String sessionId) {
    return _firestore.collection('sessions').doc(sessionId).collection('iceCandidates').snapshots();
  }

  // // 페어링 정보 저장
  // Future<void> savePairing(PairingInfo pairingInfo) async {
  //   await _firestore.collection('pairings').doc(pairingInfo.pairingCode).set(pairingInfo.toMap());
  // }
  //
  // // 페어링 정보 가져오기
  // Future<PairingInfo?> getPairingByCode(String pairingCode) async {
  //   final doc = await _firestore.collection('pairings').doc(pairingCode).get();
  //   if (doc.exists) {
  //     return PairingInfo.fromMap(doc.data()!);
  //   }
  //   return null;
  // }
}
