import 'dart:ui';
import 'package:flutter/material.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/mainIcon.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 5),
            const Text(
              'Little',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 65,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.3),
              child: Text(
                'Guardian',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
