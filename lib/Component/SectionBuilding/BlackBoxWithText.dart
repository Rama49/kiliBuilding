// BlackBoxWithText.dart
import 'package:flutter/material.dart';

class BlackBoxWithText extends StatelessWidget {
  final String text;

  const BlackBoxWithText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(8.0),
      color: Colors.black,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
