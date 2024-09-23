
import 'package:little_guardian/domain/model/child_model.dart';

class Guardian {
  final String id; // 보호자의 고유 ID 파베에서 끌어옴
  List<Child> children; // 보호자가 관리하는 아이 리스트 (최대 2명)

  Guardian({required this.id, required this.children});

  // Firebase에 저장할 데이터 형식으로 변환
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'children': children.map((child) => child.toMap()).toList(),
    };
  }

  // Firebase에서 불러온 데이터를 Guardian 객체로 변환
  factory Guardian.fromMap(Map<String, dynamic> map) {
    return Guardian(
      id: map['id'],
      children: (map['children'] as List)
          .map((childData) => Child.fromMap(childData))
          .toList(),
    );
  }
}
