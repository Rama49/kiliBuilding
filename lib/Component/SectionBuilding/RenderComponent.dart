// right_component.dart
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/ClickableCard.dart';

class CardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Column(
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
        )
      ],
    );
  }
}
