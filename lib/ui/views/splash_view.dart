import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pointColor,
      body: GestureDetector(
        child: Center(
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
      ),
    );
  }
}
