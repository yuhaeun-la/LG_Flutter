import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:little_guardian/ui/views/parent/home/home_view.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'di/di.dart';
import 'package:little_guardian/ui/views/parent/home/sound_listening_view.dart';
import 'package:little_guardian/viewmodels/sound_listening_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  setupDI(); // DI 설정 호출

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => getIt<SoundListeningViewModel>(), // DI를 통해 ViewModel 주입
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'NanumSquareNeo',
        ),
        home: const HomeView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
