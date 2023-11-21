import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';
import 'package:kiliwebsite/Reutilisable/imageText.dart';

class Entrepreneur extends StatelessWidget {
  const Entrepreneur({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: EdgeInsets.only(top: 100, bottom: 100),
          child: ListView(children: [
            TitleReu(
                titre:
                    "Des entrepreneurs et des particulier nous font deja confiance",
                soustexte: "Faire un site web n'a jamais été aussi simple"),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "clockcomputer.png",
                    width: 300,
                  ),
                  imageText(
                      image: Image.asset('ngirane.png', width: 50),
                      titre: "NGUIRANE At Tidiani ",
                      sousTitre: "Fondateur de Kalam",
                      texte:
                          "\nLorem ipsum dolor sit amet consectetur. Mauris etiam id volutpat ut sed\n hac. Vel donec mauris turpis venenatis sed faucibus. Lorem ipsum dolor sit amet\n consectetur. Mauris etiam id volutpat ut sed hac. Vel donec mauris turpis venenatis \nsed faucibus.Lorem ipsum dolor sit amet consectetur. Mauris etiam id volutpat ut \nsed hac. Vel donec mauris turpis venenatis sed faucibus")
                ],
              ),
            ),
          
          //second row
          
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      imageText(
                          image: Image.asset('ngirane.png', width: 50),
                          titre: "NGUIRANE At Tidiani ",
                          sousTitre: "Fondateur de Kalam",
                          texte:
                              "\nLorem ipsum dolor sit amet consectetur. Mauris etiam id volutpat ut sed\n hac. Vel donec mauris turpis venenatis sed faucibus. Lorem ipsum dolor sit amet\n consectetur. Mauris etiam id volutpat ut sed hac. Vel donec mauris turpis venenatis \nsed faucibus.Lorem ipsum dolor sit amet consectetur. Mauris etiam id volutpat ut \nsed hac. Vel donec mauris turpis venenatis sed faucibus"),
                      Image.asset("imageleft.png", width: 300),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        );

  }
}
