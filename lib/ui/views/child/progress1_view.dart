import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/components/wide_toggle_button.dart';
import 'package:little_guardian/ui/views/setting_top_view.dart';
import 'package:little_guardian/utils/colors_util.dart';

class ChildProgress1View extends StatelessWidget {
  const ChildProgress1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor, // 배경색 설정
      body: SafeArea(
        child: Column(
          children: [
            SettingTopView(progressLevel: 0.3),
            Spacer(),
            wideToggleButton(firstText: 'child', secondText: 'parents'),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

