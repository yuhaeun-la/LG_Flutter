import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/setting/progress2_view.dart';
import 'package:little_guardian/ui/views/parent/home_view.dart';
import 'package:little_guardian/ui/views/landing_view.dart';
import 'package:little_guardian/ui/views/child/setting/progress1_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primaryColor: Colors.blue,
        // accentColor: Colors.amber,
        // scaffoldBackgroundColor: Colors.white,
        // backgroundColor: Colors.grey[100],
        fontFamily: 'NanumSquareNeo',
        textTheme: TextTheme(
          // headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          // headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          // bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const HomeView(),
    );
  }
}
