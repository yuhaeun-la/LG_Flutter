import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class EmergencyAlarmView extends StatefulWidget {
  @override
  _EmergencyAlarmViewState createState() => _EmergencyAlarmViewState();
}

// TODO: 코드 정리
class _EmergencyAlarmViewState extends State<EmergencyAlarmView> with SingleTickerProviderStateMixin {
  bool isRinging = false; // 상태: 종이 울리고 있는지 여부
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    // Tween을 사용하여 회전 애니메이션 정의 (빠르게 흔들림)
    _rotationAnimation = Tween<double>(begin: -0.1, end: 0.1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticInOut,
    ));

    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.red).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose(); // 애니메이션 컨트롤러 해제
    super.dispose();
  }

  void toggleAlarm() {
    setState(() {
      isRinging = !isRinging;
      if (isRinging) {
        _controller.repeat(reverse: true); // 종 울리기 시작 (빠르게 반복)
      } else {
        _controller.stop(); // 종 울리기 중지
      }
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
          const Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: toggleAlarm, // 종 울림 상태 전환
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 중앙의 아이콘 (색상 및 회전 애니메이션 적용)
                    buildAnimatedBuilder(),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                isRinging ? '종이 울리고 있습니다' : '종을 울립니다',
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'NanumSquareNeo',
                  color: isRinging ? Colors.red : pointColor2,
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
        ],
      ),
    );
  }

  AnimatedBuilder buildAnimatedBuilder() {
    return AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: isRinging ? _rotationAnimation.value : 0, // 아이콘 흔들림
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,// 색상 애니메이션 적용 (흰색 -> 빨간색)
                            shape: BoxShape.circle,
                          ),
                          padding: EdgeInsets.all(40.0),
                          child: Icon(
                            isRinging ? Icons.notifications_active : Icons.notifications_off, // 아이콘 변경
                            size: 50.0,
                            color: isRinging? _colorAnimation.value : pointColor, // 아이콘 색상
                          ),
                        ),
                      );
                    },
                  );
  }
}
