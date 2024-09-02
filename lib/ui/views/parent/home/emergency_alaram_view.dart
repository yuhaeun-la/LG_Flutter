import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class EmergencyAlarmView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Littles',
          style: TextStyle(
            fontFamily: 'jalnan',
            fontSize: 20,
            color: gray3,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: mainColor, // 배경색 설정
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 60.0), // 상단 여백 추가
          const Spacer(), // 중간 여백을 균등하게 분배
          // 알림 아이콘과 텍스트
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(40.0),
                child: Icon(
                  Icons.notifications_active,
                  size: 50.0,
                  color: pointColor,// 아이콘 색상
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '알람을 울립니다',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'NanumSquareNeo',
                  color: pointColor2, // 텍스트 색상
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            alignment: Alignment.bottomRight,
            'assets/flowerbaby.png',
            height: 150.0,
          ),
          SizedBox(height: 40.0), // 하단 여백 추가
        ],
      ),
    );
  }
}
