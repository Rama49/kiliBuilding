import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionFonctionnalite/Fonctionnalite.dart';
import 'package:kiliwebsite/Component/sectionEntrepreneurs/Entrepreneur.dart';
import 'package:kiliwebsite/pages/test.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           Test(hauteur: 300, largeur: 300, couleur: Colors.black, text: 'latyr est beau',)
          ],
        ),
      ),
    );
  }
}
