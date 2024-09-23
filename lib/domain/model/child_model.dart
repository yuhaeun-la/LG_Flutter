class Child {
  final String id;
  final String name;
  final String parentId;
  final String photoUrl;
  final bool isPaired;      // 페어링 상태
  final DateTime? pairedAt; // 페어링된 시간

  Child({
    required this.id,
    required this.name,
    required this.parentId,
    required this.photoUrl,
    this.isPaired = false,
    this.pairedAt,
  });

  factory Child.fromMap(Map<String, dynamic> map) {
    return Child(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      parentId: map['parentId'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
      isPaired: map['isPaired'] ?? false,
      pairedAt: map['pairedAt'] != null ? DateTime.parse(map['pairedAt']) : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'parentId': parentId,
      'photoUrl': photoUrl,
      'isPaired': isPaired,
      'pairedAt': pairedAt?.toIso8601String(),
    };
  }
}
