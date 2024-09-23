class PairingInfo {
  final String parentId;
  DateTime createdAt;    // 페어링 요청 시간
  DateTime? confirmedAt; // 페어링이 완료된 시간
  String status;         // 페어링 상태: 'pending', 'accepted', 'rejected'
  String pairingCode;


  PairingInfo({
    required this.pairingCode,
    required this.parentId,
    this.status = 'pending',
    required this.createdAt,
    this.confirmedAt,
  });

  factory PairingInfo.fromMap(Map<String, dynamic> map) {
    return PairingInfo(
      pairingCode: map['pairingCode'] ?? '',
      parentId: map['parentId'] ?? '',
      status: map['status'] ?? 'pending',
      createdAt: DateTime.parse(map['createdAt']),
      confirmedAt: map['confirmedAt'] != null ? DateTime.parse(map['confirmedAt']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'pairingCode': pairingCode,
      'parentId': parentId,
      'status': status,
      'createdAt': createdAt.toIso8601String(),
      'confirmedAt': confirmedAt?.toIso8601String(),
    };
  }
}
