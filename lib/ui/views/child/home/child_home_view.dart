import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';
import 'package:little_guardian/ui/views/components/home_square_button.dart';
import 'package:little_guardian/ui/views/components/wide_toggle_button.dart';
import 'package:little_guardian/ui/views/parent/home/child_card.dart';
import 'package:little_guardian/ui/views/parent/home/emergency_alaram_view.dart';
import 'package:little_guardian/ui/views/parent/home/sound_listening_view.dart';
import 'package:lottie/lottie.dart';


class ChildHomeView extends StatelessWidget {
  const ChildHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homeBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Row(
                        children: const [
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Text(
                              'Littles',
                              style: TextStyle(
                                fontFamily: 'jalnan',
                                fontSize: 28,
                                color: gray2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    // Buttons for actions
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
