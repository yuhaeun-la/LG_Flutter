import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class ChildCard extends StatelessWidget{
  ChildCard({super.key});

@override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              const SizedBox(width: 15),
              const CircleAvatar(
                radius: 40,
                backgroundImage:
                AssetImage('assets/image/user1.jpg'),
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 10),
                  Text(
                    '김초롱',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text('6살'),
                  Text('한빛어린이집'),
                  Text(
                    'free use',
                    style: TextStyle(
                      color: gray1,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ],
          ),
        ),
    );
  }
}