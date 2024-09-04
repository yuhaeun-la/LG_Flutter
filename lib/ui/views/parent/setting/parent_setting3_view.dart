import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';
import 'package:little_guardian/ui/views/components/next_page_button.dart';
import 'package:little_guardian/ui/views/components/setting_top_view.dart';
import 'package:little_guardian/ui/views/parent/setting/parent_finished_setting_view.dart';

class ParentSetting3View extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SettingTopView(progressLevel: 0.8),
              const Spacer(),
              Text(
                'Pairing Code',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCodeBox('A'),
                  _buildCodeBox('2'),
                  _buildCodeBox('4'),
                  _buildCodeBox('1'),
                  _buildCodeBox('0'),
                ],
              ),
              SizedBox(height: 10.0),
              Text(
                'Code valid for 60:00',
                style: TextStyle(
                  color: pointColor2,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 40.0),
              Text(
                '1. Enter the pairing Code on the Child Device\n 2. Keep this Screen open while you do this',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Spacer(),
              NextPageButton(targetPage: ParentFinishedSettingView()),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCodeBox(String digit) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: pointColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        digit,
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontFamily: 'jalnan',
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
