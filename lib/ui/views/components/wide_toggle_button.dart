import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class wideToggleButton extends StatelessWidget {
  final String firstText;
  final String secondText;
  final ValueNotifier<String> _selectedButton;

  wideToggleButton({
    super.key,
    required this.firstText,
    required this.secondText,
  })
      : _selectedButton = ValueNotifier<String>(firstText);

  void _onButtonPressed(String buttonText) {
    _selectedButton.value = buttonText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildButton(firstText),
        SizedBox(height: 20),
        _buildButton(secondText),
      ],
    );
  }

  Widget _buildButton(String text) {
    return ValueListenableBuilder<String>(
      valueListenable: _selectedButton,
      builder: (context, value, child) {
        bool isSelected = value == text;
        return GestureDetector(
          onTap: () => _onButtonPressed(text),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 300,
            height: 70,
            decoration: BoxDecoration(
              color: isSelected ? pointColor : Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 21,
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
