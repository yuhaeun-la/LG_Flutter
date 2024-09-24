import 'package:little_guardian/data/datasources/firebase_manager.dart';
import 'package:little_guardian/domain/model/parininginfo.dart';

class PairingService {
  final FirebaseManager _firebaseManager = FirebaseManager();

  // 페어링 코드 생성 및 저장
  Future<void> createPairing(String parentId, String pairingCode) async {
    final pairingInfo = PairingInfo(
      pairingCode: pairingCode,
      parentId: parentId,
      status: 'pending',
      createdAt: DateTime.now(),
    );
    await _firebaseManager.savePairing(pairingInfo);
  }

  // 페어링 코드로 페어링 정보 가져오기
  Future<PairingInfo?> getPairingInfo(String pairingCode) async {
    return await _firebaseManager.getPairingByCode(pairingCode);
  }

  // 페어링 승인/거부 업데이트
  Future<void> updatePairingStatus(String pairingCode, String status) async {
    final pairingInfo = await getPairingInfo(pairingCode);
    if (pairingInfo != null) {
      pairingInfo.status = status; // 상태 업데이트
      await _firebaseManager.savePairing(pairingInfo);
    }
  }
}
