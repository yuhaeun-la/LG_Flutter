import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/buttons/choose_button.dart';

class ChildProgress1View extends StatelessWidget {
  const ChildProgress1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100], // 배경색 설정
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),
            const Spacer(),
            IconButton(
              icon: Icon(
                Icons.play_arrow,
                size: 40,
                color: Colors.pink[400],
              ),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const Spacer(),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                'lib/utils/assets/child.png',
                height: 100, // TODO: safeArea 무시
              ),
            ),
          ],
        ),
      ),
    );
  }
}

