import 'package:flutter/material.dart';
import 'package:little_guardian/ui/style/colors_util.dart';

class PracticeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget destinationView;

  const PracticeButton({
    super.key,
    required this.icon,
    required this.label,
    required this.destinationView,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          shape: CircleBorder(),
        ),
        child: Icon(
          icon,
          size: 60,
          color: gray3,
        ),
      ),
    );
  }
}
