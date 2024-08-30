import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/components//home_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Column(
                    children: const [
                      Image(
                        image: AssetImage('lib/utils/assets/mainIcon.png'),
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Little Guardian',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage:
                          AssetImage('lib/utils/assets/user1.jpg'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '김초롱',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('6살'),
                            Text('한빛어린이집'),
                            Text(
                              'free use',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Buttons for actions
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeButton(icon: Icons.hearing, label: '주변소리듣기', onPressed: (){}),
                    HomeButton(icon: Icons.notification_add, label: '알람울리기', onPressed: (){})
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
