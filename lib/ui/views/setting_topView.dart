import 'package:flutter/material.dart';
import 'package:little_guardian/utils/assets_util.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(assetRoot('mainIcon')),
          Text('setting',
            style: TextStyle(
                fontSize: 10
            ),
          ),
          LinearProgressIndicator( //얘는 위젯이라 위젯을 넣어줘야해? 다른 애들은 위젯이 아니야? 
            value: progressLevel,
          ),
        ],
      ),
    );
  }
}