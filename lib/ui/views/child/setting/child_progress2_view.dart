import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/child/setting/child_progress3_view.dart';
import 'package:little_guardian/ui/views/components/next_page_button.dart';
import 'package:little_guardian/ui/views/components/number_input_fields.dart';
import 'package:little_guardian/ui/views/components/setting_top_view.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class ChildProgress2View extends StatelessWidget {
  ChildProgress2View({super.key});

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
            NumberInputFields(),
            Spacer(),
            NextPageButton(targetPage: ChildProgress3View()),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
