import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/CardTemplate.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Template extends StatelessWidget {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column (
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        TitleReu(titre: "Templates"),
            SizedBox(
                height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
          CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
              texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
            CardTemplate(
              image: Image.asset(
                "template.png",
              ),
              title: "lorem ipsum",
              paragraph: "Developpeur React Native",
               texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
            ),
          ],
        ),
      ],
      ),
    );
  }
}
