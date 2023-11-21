import 'package:flutter/material.dart';

class CardReutilisable extends StatelessWidget {
  final String title;
  final String paragraph;

  const CardReutilisable({
    super.key,
    required this.title,
    required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title),
        Text(paragraph),
      ],
    );
  }
}
