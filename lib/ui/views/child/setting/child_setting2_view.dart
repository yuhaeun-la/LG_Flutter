import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/setting/child_finished_setting_view.dart';
import 'package:little_guardian/ui/components/next_page_button.dart';
import 'package:little_guardian/ui/components/number_input_fields.dart';
import 'package:little_guardian/ui/components/setting_text.dart';
import 'package:little_guardian/ui/components/setting_top_view.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class ChildSetting2View extends StatelessWidget {
  ChildSetting2View({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SettingTopView(progressLevel: 0.6),
            Spacer(),
            SettingText(settingText: '보호자의 세팅 코드를 입력하십시오'),
            NumberInputFields(),
            Spacer(),
            NextPageButton(targetPage: ChildFinishedSettingView()),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
