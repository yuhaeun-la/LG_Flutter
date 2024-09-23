// 더미 Child 객체 생성
import 'package:little_guardian/domain/model/child_model.dart';
import 'package:little_guardian/domain//model/parent_model.dart';

final Child dummyChild1 = Child(
  name: 'Alice',
  photoUrl: 'https://example.com/photo_alice.jpg',
);

final Child dummyChild2 = Child(
  name: 'Bob',
  photoUrl: 'https://example.com/photo_bob.jpg',
);

// 더미 Guardian 객체 생성 (최대 2명의 아이를 가질 수 있음)
final Guardian dummyGuardian = Guardian(
  id: 'guardian1', // 보호자 고유 ID
  children: [dummyChild1, dummyChild2], // 두 명의 아이
);
