// ignore: file_names
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/CardSecurity/CardSecurity.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Security extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Security({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFfff7f5),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TitleReu(titre: "Projects"),
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
