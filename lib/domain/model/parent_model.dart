class Parent {
  final String id;
  final String name;
  List<String> childrenIds; // 페어링된 자식들 ID 목록
  bool isPaired;            // 페어링 상태
  DateTime? pairedAt;       // 페어링된 시간

  Parent({
    required this.id,
    required this.name,
    required this.childrenIds,
    this.isPaired = false,
    this.pairedAt,
  });

  factory Parent.fromMap(Map<String, dynamic> map) {
    return Parent(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      childrenIds: List<String>.from(map['childrenIds'] ?? []),
      isPaired: map['isPaired'] ?? false,
      pairedAt: map['pairedAt'] != null ? DateTime.parse(map['pairedAt']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'childrenIds': childrenIds,
      'isPaired': isPaired,
      'pairedAt': pairedAt?.toIso8601String(),
    };
  }
}
