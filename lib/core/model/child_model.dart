class Child {
  final String name;
  String photoUrl;

  Child({required this.name, required this.photoUrl});

  // Firebase에 저장할 데이터 형식으로 변환
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  // Firebase에서 불러온 데이터를 Child 객체로 변환
  factory Child.fromMap(Map<String, dynamic> map) {
    return Child(
      name: map['name'],
      photoUrl: map['photoUrl'],
    );
  }
}