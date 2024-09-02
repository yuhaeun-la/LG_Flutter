import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/setting_top_view.dart';

class ChildProgress3View extends StatelessWidget {
  ChildProgress3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SettingTopView(progressLevel: 1.0),
            Spacer(),
            Spacer(),
            Text('Finished'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}