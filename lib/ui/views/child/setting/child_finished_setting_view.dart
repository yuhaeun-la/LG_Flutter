import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';
import 'package:little_guardian/ui/views/child/home/child_home_view.dart';
import 'package:little_guardian/ui/components/next_page_button.dart';
import 'package:little_guardian/ui/components/setting_text.dart';
import 'package:little_guardian/ui/components/setting_top_view.dart';
import 'package:little_guardian/ui/views/parent/home/home_view.dart';
import 'package:little_guardian/ui/views/parent/setting/setting1_view.dart';

class ChildFinishedSettingView extends StatelessWidget {
  ChildFinishedSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SettingTopView(progressLevel: 1.0),
            Spacer(),
          Image.asset(
            'assets/image/finish-line.png',
            width: screenWidth * 0.7,   // 화면 너비의 70%
            height: screenHeight * 0.4, // 화면 높이의 40%
            fit: BoxFit.contain,        // 이미지를 주어진 크기에 맞추기
          ),
            Spacer(),
            SettingText(settingText: '세팅이 끝났습니다'),
            NextPageButton(targetPage: HomeView()),
            Spacer(),
          ],
        ),
      ),
    );
  }
}