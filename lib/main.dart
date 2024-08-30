import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/progress2_view.dart';
import 'package:little_guardian/ui/views/parent/home_view.dart';
import 'package:little_guardian/ui/views/landing_view.dart';
import 'package:little_guardian/ui/views/child/progress1_view.dart';
import 'package:little_guardian/ui/views/components/setting_progress.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ChildProgress1View(),
    );
  }
}
