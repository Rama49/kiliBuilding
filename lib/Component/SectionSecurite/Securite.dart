// ignore: file_names
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/CardSecurity/CardSecurity.dart';

class Security extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Security({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50.0),
      // color: const Color(0xFFfff7f5),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sécurité',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color(0xFFf44336),
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
              
              // Ajoutez d'autres styles ici
            ),
            SizedBox(
                height: 20), // Ajoutez un espace entre le titre et les cartes
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardSecurity(),
              ],
            ),
            // Ajoutez d'autres widgets ici
          ],
        ),
      ),
    );
  }
}
