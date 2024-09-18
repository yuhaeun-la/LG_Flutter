// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class FirebaseManager { // 기본 크루드 구현
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   // Firestore 컬렉션에 데이터 저장
//   Future<void> writeData(String collection, String docId, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collection).doc(docId).set(data);
//     } catch (e) {
//       throw Exception("Firestore write error: $e");
//     }
//   }
//
//   // Firestore에서 문서 읽기
//   Future<DocumentSnapshot> readData(String collection, String docId) async {
//     try {
//       return await _firestore.collection(collection).doc(docId).get();
//     } catch (e) {
//       throw Exception("Firestore read error: $e");
//     }
//   }
//
//   // 실시간 데이터 감시
//   Stream<DocumentSnapshot> listenToData(String collection, String docId) {
//     try {
//       return _firestore.collection(collection).doc(docId).snapshots();
//     } catch (e) {
//       throw Exception("Firestore listen error: $e");
//     }
//   }
//
//   // 하위 컬렉션에 데이터 저장
//   Future<void> writeSubCollectionData(String collection, String docId, String subCollection, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collection).doc(docId).collection(subCollection).add(data);
//     } catch (e) {
//       throw Exception("Firestore write subcollection error: $e");
//     }
//   }
//
//   // 하위 컬렉션 실시간 데이터 감시
//   Stream<QuerySnapshot> listenToSubCollection(String collection, String docId, String subCollection) {
//     try {
//       return _firestore.collection(collection).doc(docId).collection(subCollection).snapshots();
//     } catch (e) {
//       throw Exception("Firestore listen subcollection error: $e");
//     }
//   }
// }
