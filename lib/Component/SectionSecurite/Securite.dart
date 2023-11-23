import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/CardSecurity/CardSecurity.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Security extends StatelessWidget {
  const Security({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50.0),
        // color: const Color(0xFFfff7f5),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleReu(titre: "Projects",),
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
      ),
    );
  }
}
