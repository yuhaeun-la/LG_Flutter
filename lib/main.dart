import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Firebase Core 패키지 임포트
import 'firebase_options.dart'; // Firebase 옵션 임포트
import 'package:little_guardian/ui/views/parent/setting/setting1_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 위젯 시스템 초기화
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Firebase 초기화
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NanumSquareNeo',
      ),
      home: const Setting1View(),
      debugShowCheckedModeBanner: false,  // 디버그 배너 숨기기
    );
  }
}
