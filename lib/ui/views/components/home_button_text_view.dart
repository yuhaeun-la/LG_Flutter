import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class HomeButtonTextView extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final VoidCallback onPressed;

  HomeButtonTextView({
    required this.icon,
    required this.labelText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: IconButton(
            icon: Icon(
              icon,
              color: pointColor,
              size: 50,),
            onPressed: onPressed,
          ),
        ),
        SizedBox(height: 8), // 아이콘과 텍스트 사이의 간격
        Text(
          labelText,
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'NanumSquareNeo',
            color: pointColor2, // 텍스트 색상
          ),
        ),
      ],
    );
  }
}
