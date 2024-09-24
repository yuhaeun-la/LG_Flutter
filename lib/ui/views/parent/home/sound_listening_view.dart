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
      body: viewModel.isParent
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 60.0),
          const Spacer(),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  viewModel.startListening();
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
                    Positioned(
                      top: 0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: viewModel.isParent ? Colors.red : Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                        onPressed: () {
                          viewModel.setRole(!viewModel.isParent);
                        },
                        child: Text(
                          viewModel.isParent ? '부모' : '자녀',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
      )
          : Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          onPressed: () {
            viewModel.setRole(true);
          },
          child: Text(
            '부모로 변경',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
