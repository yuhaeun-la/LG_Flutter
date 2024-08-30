import 'package:flutter/material.dart';

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
              color: isSelected ? Colors.redAccent : Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 24,
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
