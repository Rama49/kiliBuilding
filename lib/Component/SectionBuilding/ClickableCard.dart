// ClickableCard.dart
import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/BoutonTemplate.dart';

class ClickableCard extends StatelessWidget {
  final String text;
  final VoidCallback onCardTap;
  final double largeur;

  const ClickableCard({
    Key? key,
    required this.text,
    required this.onCardTap, required this.largeur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTap,
      child: Container(
        width: largeur,
        // padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.0),
          border: Border.all(
            color: Colors.grey, // Couleur de la bordure
            width: 1.0, // Largeur de la bordure
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icône "+" dans un cercle violet
            Container(
              // decoration: const BoxDecoration(
              //   color: Colors.purple,
              //   shape: BoxShape.circle,
              // ),
              child: IconButton(
                icon: const Icon(Icons.add_circle,
                    color: Colors.purple,
                    size: 16.0), // Ajustez la taille de l'icône
                onPressed: () {
                  // Action du bouton "+"
                  print('Bouton "+" cliqué');
                },
              ),
            ),
            // Composant texte en fond violet
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(left: 8.0),
              color: Colors.purple,
              child: Text(
                'Component $text',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0), // Ajustez la taille de la police
              ),
            ),
            // Text Navbar
            const Text(
              'Navbar',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0), // Ajustez la taille de la police
            ),
            // Bouton "Edit"
            BoutonTemplate(
              title: 'Edit $text',
              onPressed: () {
                // Action du bouton "Edit"
                print('Bouton "Edit" cliqué');
              },
              couleur: Colors.white60,
              fontSize: 12, // Ajustez la taille de la police
            ),
          ],
        ),
      ),
    );
  }
}
