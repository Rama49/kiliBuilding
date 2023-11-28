import 'package:flutter/material.dart';

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Rendu',
            style: TextStyle(
              color: Colors.red,
              fontSize: 18, // Changer la taille du texte du titre si nécessaire
              fontWeight: FontWeight.bold, // Changer le style du texte du titre si nécessaire
            ),
          ),
      
        ],
      ),
    );
  }
}
