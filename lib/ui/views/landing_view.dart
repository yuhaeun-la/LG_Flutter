import 'dart:ui';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/utils/assets/mainIcon.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 5), // 이미지와 텍스트 사이의 간격
            const Text(
              'Little',
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
              style: TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto', // 설정한 글꼴
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 1.0),
              child: Text(
                'Guardian',
                textAlign: TextAlign.center, // 텍스트 가운데 정렬
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto', // 설정한 글꼴
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
