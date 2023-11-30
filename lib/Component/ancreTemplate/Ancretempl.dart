import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/CardTemplate.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Ancretempl extends StatelessWidget {
  const Ancretempl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return screen.width > 768
    ?
    Scaffold(
      body: SingleChildScrollView(
        child: Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          TitleReu(titre: "Templates", soustexte: '',),
              SizedBox(
                  height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: CardTemplate(
                  image: Image.asset(
                    "template.png"
                  ),
                  title: "lorem ipsum",
                  paragraph: "Developpeur React Native",
                   texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
                ),
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
                  "template.png"
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
      ),
    )
    :Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TitleReu(titre: "Templates", soustexte: '',),
                SizedBox(
                    height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardTemplate(
                  image: Image.asset(
                    "template.png"
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
             Column(
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
        ),
      ),
    );
  }
}
