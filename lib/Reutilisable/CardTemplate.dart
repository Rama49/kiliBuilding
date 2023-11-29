import 'dart:html';

import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building.dart';
import 'package:kiliwebsite/Reutilisable/BoutonTemplate.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';

class CardTemplate extends StatelessWidget {
  final Image image;
  final String title;
  final String paragraph;
  final String texte;

  const CardTemplate(
      {super.key,
      required this.image,
      required this.title,
      required this.paragraph,
      required this.texte});

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;
   return Screen.width > 768
   ? Container(
      color: Colors.white,
      width: 225,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
          ),
          Container(padding: EdgeInsets.only(left: 20), child: Text(paragraph)),
          SizedBox(height: 20),
          Container(padding: EdgeInsets.only(left: 20), child: Text(texte)),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center, // Aligner le bouton au centre
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0), // Ajouter un padding en bas du bouton
              child: BouttonOrange(
                title: "Voir template",
                onPress: () {    Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuildingComponent())); },
              ),
            ),
          ),
        ],
      ),
    )
    : Container(
                  alignment: Alignment.center, // Aligner le bouton au centre

      color: Colors.white,
      width: 390,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
          ),
          Container(padding: EdgeInsets.only(left: 20), child: Text(paragraph)),
          SizedBox(height: 20),
          Container(padding: EdgeInsets.only(left: 20), child: Text(texte)),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.center, // Aligner le bouton au centre
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0), // Ajouter un padding en bas du bouton
              child: BouttonOrange(
                title: "Voir template",
                onPress: () {    Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuildingComponent())); },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
