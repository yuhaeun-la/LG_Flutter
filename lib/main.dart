import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/landing_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LandingPage(),
    );
  }
}
