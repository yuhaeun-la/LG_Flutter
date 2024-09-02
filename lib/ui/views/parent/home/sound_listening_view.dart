import 'package:flutter/material.dart';

class SoundListeningView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF4F4), // 배경색 설정
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 60.0), // 상단 여백 추가
          // 상단 로고 및 텍스트
          Column(
            children: [
              Image.asset(
                'assets/logo.png', // 로고 이미지 (로컬 assets 폴더에 저장)
                height: 50.0,
              ),
              SizedBox(height: 10.0),
              Text(
                'Little Guardian',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(), // 중간 여백을 균등하게 분배
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
                  Icons.notifications_none,
                  size: 50.0,
                  color: Color(0xFFDB6D6D), // 아이콘 색상
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '알람을 울립니다!',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Color(0xFFDB6D6D), // 텍스트 색상
                ),
              ),
            ],
          ),
          Spacer(), // 중간 여백을 균등하게 분배
          // 하단 일러스트 이미지
          Image.asset(
            'assets/illustration.png', // 일러스트 이미지 (로컬 assets 폴더에 저장)
            height: 150.0,
          ),
          SizedBox(height: 40.0), // 하단 여백 추가
        ],
      ),
    );
  }
}
