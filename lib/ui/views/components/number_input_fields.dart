import 'package:flutter/material.dart';
import 'package:little_guardian/core/utils/colors_util.dart';

class NumberInputFields extends StatefulWidget {
  final int fieldLength;
  final ValueChanged<String>? onCompleted;

  NumberInputFields({
    this.fieldLength = 5,
    this.onCompleted,
  });

  @override
  _NumberInputFieldsState createState() => _NumberInputFieldsState();
}

class _NumberInputFieldsState extends State<NumberInputFields> {
  late List<FocusNode> _focusNodes;
  late List<TextEditingController> _controllers;

  @override
  void initState() {
    super.initState();
    _focusNodes = List.generate(widget.fieldLength, (index) => FocusNode());
    _controllers = List.generate(widget.fieldLength, (index) => TextEditingController());
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _onFieldChanged(int index, String value) {
    if (value.length == 1 && index < widget.fieldLength - 1) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }

    if (index == widget.fieldLength - 1) {
      String code = _controllers.map((controller) => controller.text).join();
      if (widget.onCompleted != null && code.length == widget.fieldLength) {
        widget.onCompleted!(code);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.fieldLength, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 5),
          child: SizedBox(
            width: 60,
            child: TextField(
              controller: _controllers[index],
              focusNode: _focusNodes[index],
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontFamily: 'jalnan',
                fontWeight: FontWeight.w900,
              ),
              decoration: InputDecoration(
                counterText: '',
                filled: true,
                fillColor: pointColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) => _onFieldChanged(index, value),
            ),
          ),
        );
      }),
    );
  }
}
