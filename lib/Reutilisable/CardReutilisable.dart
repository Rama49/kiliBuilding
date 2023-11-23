import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';

class CardReutilisable extends StatelessWidget {
  final Image image;
  final String title;
  final String paragraph;
  final String texte;

  const CardReutilisable(
      {super.key,
      required this.image,
      required this.title,
      required this.paragraph,
      required this.texte});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color(0xFFF44336),
                  decoration: TextDecoration.none,
                )),
          ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                paragraph,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              )),
          const SizedBox(height: 20),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                texte,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              )),
          BouttonOrange(Title: "Voir Projet")
        ],
      ),
    );
  }
}
