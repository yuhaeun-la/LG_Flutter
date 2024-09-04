import 'package:flutter/material.dart';

class SettingText extends StatelessWidget {
  final String settingText;

  const SettingText({
    super.key,
    required this.settingText
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(20),
      child: Text(
      settingText,
      style: TextStyle(
          fontSize: 18
      ),
      ),
    );
  }
}