import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';

class TitleReu extends StatelessWidget {
  final String titre;

  const TitleReu({
    super.key,
    required this.titre, required String soustexte,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titre,
          style: TextStyle(color: Colors.red, fontSize: 50),
        ),
      ],
    );
  }
}
