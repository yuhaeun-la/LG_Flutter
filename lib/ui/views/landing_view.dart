import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class LandingView extends StatelessWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pointColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   'assets/mainIcon.png',
            //   width: 100,
            //   height: 100,
            // ),
            const SizedBox(height: 5),
            const Text(
              'Littles',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 55,
                color: gray2,
                fontWeight: FontWeight.w900,
                fontFamily: 'jalnan'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
