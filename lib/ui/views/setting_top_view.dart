import 'package:flutter/material.dart';

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
              'assets/mainIcon.png'
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Text('setting',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,5,30,30),
            child: LinearProgressIndicator(
              value: progressLevel,
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }
}