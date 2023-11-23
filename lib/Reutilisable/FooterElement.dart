import 'package:flutter/material.dart';

class FooterElement extends StatelessWidget {
  final String titre;
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  const FooterElement({
    super.key,
    required this.titre,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titre, style: TextStyle(color: Colors.white, fontSize: 20)),
        Text(text1, style: TextStyle(color: Colors.white, fontSize: 17)),
        Text(text2, style: TextStyle(color: Colors.white, fontSize: 17)),
        Text(text3, style: TextStyle(color: Colors.white, fontSize: 17)),
        Text(text4, style: TextStyle(color: Colors.white, fontSize: 17)),
      ],
    );
  }
}
