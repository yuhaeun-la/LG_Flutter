import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/setting/child_setting2_view.dart';
import 'package:little_guardian/ui/views/components/next_page_button.dart';
import 'package:little_guardian/ui/views/components/setting_text.dart';
import 'package:little_guardian/ui/views/components/wide_toggle_button.dart';
import 'package:little_guardian/ui/views/components/setting_top_view.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class Setting1View extends StatelessWidget {
  const Setting1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SettingTopView(progressLevel: 0.3),
            SettingText(settingText: '본인의 역할을 선택해 주세요 \n부모님이신가요, 아니면 자녀인가요?'),
            const Spacer(),
            wideToggleButton(firstText: 'child', secondText: 'parents'),
            const Spacer(),
            const Spacer(),
            NextPageButton(targetPage: ChildSetting2View()),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

