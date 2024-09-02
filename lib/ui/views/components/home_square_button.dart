import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class HomeSquareButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget destinationView;

  const HomeSquareButton({
    super.key,
    required this.icon,
    required this.label,
    required this.destinationView,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 140,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destinationView),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: gray1,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: 70), //Todo:: 왜 80이상 줄 수 없지? 난 그 값을 원하는뎅
                  child: Icon(
                    icon,
                    size: 50,
                    color: gray3,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
