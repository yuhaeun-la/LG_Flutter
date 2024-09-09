//
// class FirebaseManager {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//
//   Future<void> writeData(String collection, String docId, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collection).doc(docId).set(data);
//     } catch (e) {
//       throw Exception("Firebase write error: $e");
//     }
//   }
//
//   Future<DocumentSnapshot> readData(String collection, String docId) async {
//     try {
//       return await _firestore.collection(collection).doc(docId).get();
//     } catch (e) {
//       throw Exception("Firebase read error: $e");
//     }
//   }
//
//   Stream<DocumentSnapshot> listenToData(String collection, String docId) {
//     try {
//       return _firestore.collection(collection).doc(docId).snapshots();
//     } catch (e) {
//       throw Exception("Firebase listen error: $e");
//     }
//   }
//
//   Future<void> writeSubCollectionData(String collection, String docId, String subCollection, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collection).doc(docId).collection(subCollection).add(data);
//     } catch (e) {
//       throw Exception("Firebase write subcollection error: $e");
//     }
//   }
//
//   Stream<QuerySnapshot> listenToSubCollection(String collection, String docId, String subCollection) {
//     try {
//       return _firestore.collection(collection).doc(docId).collection(subCollection).snapshots();
//     } catch (e) {
//       throw Exception("Firebase listen subcollection error: $e");
//     }
//   }
// }
