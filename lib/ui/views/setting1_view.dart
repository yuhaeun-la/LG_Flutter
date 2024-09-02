import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/setting/child_setting2_view.dart';
import 'package:little_guardian/ui/views/components/next_page_button.dart';
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
            Spacer(),
            wideToggleButton(firstText: 'child', secondText: 'parents'),
            Spacer(),
            Spacer(),
            NextPageButton(targetPage: ChildSetting2View()),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
