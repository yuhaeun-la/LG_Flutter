import 'package:flutter/material.dart';
import 'package:little_guardian/ui/views/setting_top_view.dart';
import 'package:little_guardian/utils/colors_util.dart';

class ChildProgress2View extends StatefulWidget {
  const ChildProgress2View({super.key});

  @override
  _PinCodeScreenState createState() => _PinCodeScreenState();
}

class _PinCodeScreenState extends State<ChildProgress2View> {
  final TextEditingController _controller = TextEditingController();
  String _enteredCode = '';

  void _onChanged(String value) {
    setState(() {
      _enteredCode = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        child: Column(
          children: [
            SettingTopView(progressLevel: 60),
            const SizedBox(height: 60), // 상단 여백
            const Text(
              'Enter the Code',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return _buildCodeBox(index);
              }),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              maxLength: 5,
              keyboardType: TextInputType.number,
              onChanged: _onChanged,
              decoration: const InputDecoration(
                border: InputBorder.none,
                counterText: '',
              ),
              style: const TextStyle(
                color: Colors.transparent,
                fontSize: 0,
              ), // To hide the actual input
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCodeBox(int index) {
    return Container(
      width: 50,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.pink[400],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        _enteredCode.length > index ? _enteredCode[index] : '',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
