import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final double hauteur;
  final double largeur;
  final Color couleur;
  final String text;
  const Test({
    super.key,
    required this.hauteur,
    required this.largeur,
    required this.couleur,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: hauteur,
          width: largeur,
          color: couleur,
          child: Text(
            text,
            style: TextStyle(color: Colors.amber),
          ),
        ),
      ],
    );
  }
}
