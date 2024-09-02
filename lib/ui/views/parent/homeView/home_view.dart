import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';
import 'package:little_guardian/ui/views/components/home_square_button.dart';
import 'package:little_guardian/ui/views/components/wide_toggle_button.dart';
import 'package:little_guardian/ui/views/parent/homeView/child_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homeBackground.png"), // 배경 이미지 경로
            fit: BoxFit.cover, // 이미지를 화면에 맞게 조정
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Row(
                    children: const [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          'Littles',
                          style: TextStyle(
                            fontFamily: 'jalnan',
                            fontSize: 28,
                            color: gray2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ChildCard(),
                const SizedBox(height: 20),
                // Buttons for actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeSquareButton(
                        icon: Icons.hearing,
                        label: '주변소리듣기',
                        onPressed: () {}),
                    HomeSquareButton(
                        icon: Icons.notification_add,
                        label: '알람울리기',
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
