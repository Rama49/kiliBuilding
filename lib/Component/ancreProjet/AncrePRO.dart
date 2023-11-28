// ignore: file_names
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/CardSecurity/CardSecurity.dart';
import 'package:kiliwebsite/Reutilisable/CardReutilisable.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class AncrePRO extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const AncrePRO({Key? key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return screen.width > 768
    ? Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleReu(titre: "Projets", soustexte: '',),
              SizedBox(
                  height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardSecurity(),
                ],
              ),
              // Ajoutez d'autres widgets ici
            ],
          ),
        ),
      ),
    )
    :  Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
          ],
        ),
         Column(
          children: [
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
              texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardReutilisable(
              image: Image.asset(
                "securite.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
          ],
        ),
      ],
    );
  }
}
