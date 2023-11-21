import 'package:flutter/material.dart';

class imageText extends StatelessWidget {

   final Image image;
   final String titre;
   final String sousTitre;
   final String texte;

  const imageText({
    super.key,
    required this.image,
    required this.titre,
    required this.sousTitre,
    required this.texte
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          Text(titre),
          Text(sousTitre),
          Text(texte),
        ],
      ),
    );
  }
}