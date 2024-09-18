import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class SettingTopView extends StatelessWidget {
  final double? progressLevel;

  const SettingTopView({
    super.key,
    required this.progressLevel
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3), //여기서 의미하는 숫자가 뭔지
      child: Column(
        children: <Widget>[
          Image.asset(
            width: 45,
              height: 45,
              'assets/image/mainIcon.png'
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0.2,0,3),
            child: Text('settings',
              style: TextStyle(
                  fontSize: 17,
                fontWeight: FontWeight.w300,
                color: gray3
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,30,30),
            child: LinearProgressIndicator(
              value: progressLevel,
              color: pointColor,
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}