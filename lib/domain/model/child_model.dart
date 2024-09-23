class Child {
  final String id;
  final String name;
  String parentId;
  String photoUrl;
  bool isPaired;      // 페어링 상태

  Child({
    required this.id,
    required this.name,
    required this.parentId,
    required this.photoUrl,
    this.isPaired = false,
  });

  factory Child.fromMap(Map<String, dynamic> map) {
    return Child(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      parentId: map['parentId'] ?? '',
      photoUrl: map['photoUrl'] ?? '',
      isPaired: map['isPaired'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'parentId': parentId,
      'photoUrl': photoUrl,
      'isPaired': isPaired,
    };
  }
}
