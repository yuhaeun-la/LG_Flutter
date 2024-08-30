import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const HomeButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 100,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, size: 30),
        label: Text(label, textAlign: TextAlign.center),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        ),
      ),
    );
  }
}
