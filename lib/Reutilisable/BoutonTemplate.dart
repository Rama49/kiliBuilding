import 'package:flutter/material.dart';

class BoutonTemplate extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const BoutonTemplate({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red, // Définir la couleur de fond du bouton à rouge
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Utiliser un border radius de zéro
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14, // Ajustez la taille du texte
          color: Colors.white,
        ), // Définir la couleur du texte à blanc
      ),
    );
  }
}
