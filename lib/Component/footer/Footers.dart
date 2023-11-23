import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/FooterElement.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Footers extends StatelessWidget {
  const Footers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFF44336),
      padding: const EdgeInsets.only(bottom: 50),
      margin: const EdgeInsets.only(top: 50),
      child: const Column(children: [
        TitleReu(titre: "S'abonner a notre Newsletter"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FooterElement(
                titre: "Entreprise",
                text1: "A propos de nous",
                text4: "Pourquoi nous choisir",
                text2: "Tarification",
                text3: "Temoignage"),
            FooterElement(
                titre: "Ressources",
                text1: "Politique prive",
                text4: "Termes & conditions",
                text2: "Blog",
                text3: "Contacter nous"),
            FooterElement(
                titre: "Produits",
                text1: "Gestion de projet",
                text4: "Suivi du temps",
                text2: "Calendrier",
                text3: "enerer des prospects"),
            Column(
              children: [
                Text(
                  "Copyright 2022",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(Icons.facebook),
                  ],
                )
              ],
            )
          ],
        )
      ]),
    );
  }
}
