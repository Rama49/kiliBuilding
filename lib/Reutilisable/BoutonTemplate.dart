// bouton_template.dart
import 'package:flutter/material.dart';

class BoutonTemplate extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? couleur; // Nouvelle propriété pour la couleur du bouton
  final double? fontSize; // Nouvelle propriété pour la taille de police du texte

  const BoutonTemplate({
    Key? key,
    required this.title,
    required this.onPressed,
    this.couleur,
    this.fontSize, // Ajouter la taille de police comme argument
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: couleur ?? Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize ?? 14, // Utiliser la taille de police fournie ou 14 par défaut
          color: Colors.white,
        ),
      ),
    );
  }
}
