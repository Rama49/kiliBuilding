// left_component.dart
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/BlackBoxWithText.dart';
import 'package:kiliwebsite/Component/SectionBuilding/ClickableCard.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Header.dart';
import 'package:kiliwebsite/Reutilisable/BoutonTemplate.dart';

class LeftComponent extends StatelessWidget {
  const LeftComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // En-tête réutilisable
          Header(),
          const SizedBox(height: 20.0),
          // Contenu avec la carte déplaçable
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClickableCard(
                text: '1',
                onCardTap: () {
                  // Gérer l'action de clic sur la carte déplaçable
                  print('Carte déplaçable cliquée: 1');
                }, largeur: 280,
              ),
              const SizedBox(height: 15.0),
              // Autres éléments de contenu ici...
              ClickableCard(
                text: '2',
                onCardTap: () {
                  // Gérer l'action de clic sur la carte déplaçable
                  print('Carte déplaçable cliquée: 2');
                }, largeur: 310,
              ),
              const SizedBox(height: 15.0),
              ClickableCard(
                text: '3',
                onCardTap: () {
                  // Gérer l'action de clic sur la carte déplaçable
                  print('Carte déplaçable cliquée: 3');
                }, largeur: 300,
              ),
              const SizedBox(height: 15.0),
            ],
          ),
          // Espacement entre les cartes et les paragraphes
          const SizedBox(height: 16.0),
          // Paragraphes réutilisables
          Column(
            children: [
              BlackBoxWithText(text: 'Paragraphe 1'),
              BlackBoxWithText(text: 'Paragraphe 2'),
            ],
          ),
          // Pied de page
          _buildFooter(),
        ],
      ),
    );
  }

  // Reste du code...

  Widget _buildFooter() {
    return const Text(
      'Pied de page',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
