import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';

class Bibliotheque extends StatelessWidget {
  const Bibliotheque({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: const EdgeInsets.only(top: 200),
     margin: const EdgeInsets.only(bottom: 50),
    width: 1800,
 decoration: BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFFf44336), Color(0xFF000000)],
    ),
    
),
      child: Column(
        children: [
          Bouton(Title: "Bibliotèque")
          ],
      ),
    );
  }
}
