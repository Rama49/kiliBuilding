import 'dart:html';

import 'package:flutter/material.dart';

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'Rendu',
            style: TextStyle(
              
              color: Colors.red,
              fontSize: 18, // Changer la taille du texte du titre si nécessaire
              fontWeight: FontWeight.bold, // Changer le style du texte du titre si nécessaire
            ),
          ),
        ),
        SizedBox(height: 20),
        
       Column(
         children: [
          
           Image.asset('assets/detailcomposant.png'),
           
         ],
       )
      ],
    );
  }
}
