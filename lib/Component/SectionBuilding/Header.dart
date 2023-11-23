// Header.dart
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/BoutonTemplate.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,  // Ajoutez cette ligne pour définir la couleur de fond en blanc
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icône de la maison
              Icon(Icons.house_rounded, color: Color.fromRGBO(113, 113, 113, 1)),
            ],
          ),
          Row(
            children: [
              // Boutons de la bibliothèque de composants
              BoutonTemplate(
                title: 'Component Library',
                onPressed: () {
                  // Action du bouton
                  print('Component Library');
                },
                couleur: Colors.blue,
                fontSize: 14,
              ),
              const SizedBox(width: 8.0),
              // Bouton "Add Page"
              BoutonTemplate(
                title: 'Add Page',
                onPressed: () {
                  // Action du bouton
                  print('Add Page');
                },
                couleur: Colors.white60,
                fontSize: 14,
              ),
            ],
          ),
          Row(
            children: [
              // Icône de la flèche vers le bas
              Icon(Icons.arrow_drop_down_sharp, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
