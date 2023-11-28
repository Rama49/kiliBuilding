import 'package:flutter/material.dart';

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Titre du Rendu',
          style: TextStyle(
            fontSize: 18, // Changer la taille du texte du titre si nécessaire
            fontWeight: FontWeight.bold, // Changer le style du texte du titre si nécessaire
          ),
        ),
        Image.asset('assets/detailcomposant.png'),
      ],
    );
  }
}
