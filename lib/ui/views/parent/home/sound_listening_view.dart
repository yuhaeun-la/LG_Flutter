import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:little_guardian/viewmodels/sound_listening_viewmodel.dart';
import 'package:little_guardian/ui/style/colors_util.dart';
import 'package:lottie/lottie.dart';

class SoundListeningView extends StatelessWidget {
  const SoundListeningView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SoundListeningViewModel>();

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
        elevation: 0,
      ),
      backgroundColor: mainColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 60.0),
          const Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  viewModel.toggleListening(); // ViewModel의 toggleListening 호출
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    viewModel.isListening
                        ? Lottie.asset(
                      'assets/lottie/listening.json',
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                        : Image.asset('assets/image/listen.png'),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(40.0),
                      child: Icon(
                        viewModel.isListening
                            ? Icons.hearing
                            : Icons.hearing_disabled,
                        size: 50.0,
                        color: pointColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                viewModel.isListening
                    ? '아이의 주변 소리를 듣는 중 '
                    : '아이의 주변소리를 듣지 않는 중',
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
            'assets/image/ballbaby.png',
            height: 150.0,
            alignment: Alignment.bottomRight,
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
