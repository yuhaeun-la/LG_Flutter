import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class HomeSquareButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const HomeSquareButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 140,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                 color: gray1,
                fontSize: 15
              ),
            ),
            SizedBox(height: 8),
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.only(top:10),
              child: Icon(
                icon,
                size: 35,
                color: gray2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
