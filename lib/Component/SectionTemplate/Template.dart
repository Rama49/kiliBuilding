import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building1.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building2.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building3.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building4.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building5.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building6.dart';
import 'package:kiliwebsite/Component/SectionBuilding/Building7.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';
import 'package:kiliwebsite/Reutilisable/CardTemplate.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Template extends StatelessWidget {
  const Template({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return screen.width > 768
    ?Container(
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
              child:CardTemplate(
  image: Image.asset("tontine.png"),
  title: "Fewnu Tontine",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent()),
      );
    },
  ),
),

            ),
         CardTemplate(
  image: Image.asset("bakeliTech.png"),
  title: "Bakeli Tech",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent1()),
      );
    },
  ),
),
           CardTemplate(
  image: Image.asset("easymembership.png"),
  title: "Easy Membership",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent2()),
      );
    },
  ),
)
,
           CardTemplate(
  image: Image.asset("keurYeurmande.png"),
  title: "keur Yeurmande",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent3()),
      );
    },
  ),
),
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CardTemplate(
  image: Image.asset("nike.png"),
  title: "Nike Sneakers",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent4()),
      );
    },
  ),
),
           CardTemplate(
  image: Image.asset("paymentmethod.png"),
  title: "Payment Method",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent5()),
      );
    },
  ),
),
           CardTemplate(
  image: Image.asset("travelholiday.png"),
  title: "Travel Holiday",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent6()),
      );
    },
  ),
),
            CardTemplate(
  image: Image.asset("dashboard.png"),
  title: "Dashboard",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent7()),
      );
    },
  ),
),
          ],
        ),
      ],
      ),
    )
    :Container(
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
  image: Image.asset("tontine.png"),
  title: "Bakeli Tontine",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent()),
      );
    },
  ),
),
            
         CardTemplate(
  image: Image.asset("bakeliTech.png"),
  title: "bakeli Tech",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent1()),
      );
    },
  ),
),
           CardTemplate(
  image: Image.asset("easymembership.png"),
  title: "Easy Membership",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent2()),
      );
    },
  ),
           ),
           CardTemplate(
  image: Image.asset("keurYeurmande.png"),
  title: "keur Yeurmande",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent3()),
      );
    },
  ),
),
          ],
        ),
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           CardTemplate(
  image: Image.asset("kiliappbuilder.png"),
  title: "lorem ipsum",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent()),
      );
    },
  ),
),
            CardTemplate(
  image: Image.asset("keurYeurmande.png"),
  title: "keur Yeurmande",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent3()),
      );
    },
  ),
),
            CardTemplate(
  image: Image.asset("easymembership.png"),
  title: "Easy Membership",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent2()),
      );
    },
  ),
),
            CardTemplate(
  image: Image.asset("tontine.png"),
  title: "lorem ipsum",
  paragraph: "Developpeur React Native",
  texte: "Lorem ipsum dolor sit amet consectetur.\nArcu consectetur fringilla gravida mauris.",
  child: BouttonOrange(
    title: "Voir template",
    onPress: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BuildingComponent()),
      );
    },
  ),
),
          ],
        ),
      ],
      ),
    );
  }
}
