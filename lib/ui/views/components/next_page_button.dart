import 'package:flutter/material.dart';

class NextPageButton extends StatelessWidget {
  final Widget targetPage;

  const NextPageButton({
    super.key,
    required this.targetPage
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_right_rounded),
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => targetPage)
        );
      },
      iconSize: 60,
    );
  }
}