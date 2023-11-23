import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/CardReutilisable.dart';

class CardSecurity extends StatelessWidget {
  const CardSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
         Row(
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
