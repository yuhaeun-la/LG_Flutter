class PairingInfo {
  final String pairingCode;
  final String parentId;
  final String? childId;       // 페어링된 자식의 ID
  final String status;         // 페어링 상태: 'pending', 'accepted', 'rejected'
  final DateTime createdAt;    // 페어링 요청 시간
  final DateTime? confirmedAt; // 페어링이 완료된 시간

  PairingInfo({
    required this.pairingCode,
    required this.parentId,
    this.childId,
    this.status = 'pending',
    required this.createdAt,
    this.confirmedAt,
  });

  factory PairingInfo.fromMap(Map<String, dynamic> map) {
    return PairingInfo(
      pairingCode: map['pairingCode'] ?? '',
      parentId: map['parentId'] ?? '',
      childId: map['childId'],
      status: map['status'] ?? 'pending',
      createdAt: DateTime.parse(map['createdAt']),
      confirmedAt: map['confirmedAt'] != null ? DateTime.parse(map['confirmedAt']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pairingCode': pairingCode,
      'parentId': parentId,
      'childId': childId,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
      'confirmedAt': confirmedAt?.toIso8601String(),
    };
  }
}
