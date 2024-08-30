import 'package:flutter/material.dart';

class ChooseButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onPressed;

  const ChooseButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.pink[400] : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
