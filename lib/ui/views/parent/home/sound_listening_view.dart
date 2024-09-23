import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';
import 'package:lottie/lottie.dart';

class SoundListeningView extends StatefulWidget {
  const SoundListeningView({super.key});


  @override
  _SoundListeningViewState createState() => _SoundListeningViewState();
}

class _SoundListeningViewState extends State<SoundListeningView> {
  bool isListening = false;

  void toggleListening() {
    setState(() {
      isListening = !isListening;
    });
  }

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
          const SizedBox(height: 60.0),
          const Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: toggleListening, //
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    isListening? 
                    Lottie.asset(
                      'assets/lottie/listening.json',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ) :
                    Image.asset('assets/image/listen.png')
                    ,
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(40.0),
                      child: Icon(
                        isListening ? Icons.hearing : Icons.hearing_disabled,
                        size: 50.0,
                        color: pointColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                isListening ? '아이의 주변 소리를 듣는 중 ' : '아이의 주변소리를 듣지 않는 중',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'NanumSquareNeo',
                  color: pointColor2,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset(
            alignment: Alignment.bottomRight,
            'assets/image/ballbaby.png',
            height: 150.0,
          ),
          SizedBox(height: 40.0), // 하단 여백 추가
        ],
      ),
    );
  }
}
