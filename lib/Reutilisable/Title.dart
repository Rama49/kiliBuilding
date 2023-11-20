import 'package:flutter/material.dart';

class TitleReu extends StatelessWidget {
  final String titre;
  final String soustexte;

  const TitleReu({
    super.key,
    required this.titre,
    required this.soustexte
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titre,
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        Text (soustexte)
      ],
    );
  }
}
