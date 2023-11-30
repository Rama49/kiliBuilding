import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionDomaine/Domaine.dart';
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
    var Screen = MediaQuery.of(context).size;
    return Screen.width > 768
        ? Container(
            color: Colors.white,
            width: 300,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(title,
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20), child: Text(paragraph)),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.only(left: 20), child: Text(texte)),
                BouttonOrange(
                  title: "Voir Projet",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Domaine()));
                  },
                )
              ],
            ),
          )
        : Container(
            color: Colors.white,
            width: 390,
            margin: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                image,
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(title,
                      style: TextStyle(fontWeight: FontWeight.w700)),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20), child: Text(paragraph)),
                SizedBox(height: 20),
                Container(
                    padding: EdgeInsets.only(left: 20), child: Text(texte)),
                BouttonOrange(
                  title: "Voir Projet",
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Domaine()));
                  },
                )
              ],
            ),
          );
  }
}
