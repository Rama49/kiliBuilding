// ignore: file_names
import 'package:flutter/material.dart';

class DetailComposant extends StatelessWidget {
  const DetailComposant({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          title: const Text('Composant'),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Description',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFFFE492C), // Utilise le code couleur #FE492C
              decoration: TextDecoration.none, // Enlève la décoration
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
            'nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit '
            'in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui '
            'officia deserunt mollit anim id est laborum.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.black, // Couleur du texte du paragraphe
              decoration: TextDecoration.none, // Enlève la décoration
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Rendu',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFFFE492C), // Utilise le code couleur #FE492C
              decoration: TextDecoration.none, // Enlève la décoration
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // Ajout de l'image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/detailcomposant.png',
            width: 1500,
            height: 400,
          ),
        ),
        // Ajoute d'autres widgets ici selon tes besoins
      ],
    );
  }
}
