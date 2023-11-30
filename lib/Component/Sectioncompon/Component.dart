import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.all(10),
      
      child: Column(
        children: [
          TitleReu(titre: "Composants", soustexte: ""),
          SizedBox(height: 50),
          LayoutBuilder(
            builder: (context, constraints) {
              int columnsCount = (constraints.maxWidth / 768).floor();
              return Wrap(
                spacing: 0.0,
                runSpacing: 16.0,
                children: cardDataList.map((cardData) {
                  return buildCard(context, cardData);
                }).toList(),
              );
            },
          ),
          const Row(
            children: [
              // Ajoutez les widgets de la deuxième ligne ici
            ],
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              int columnsCount = (constraints.maxWidth / 768).floor();
              return Wrap(
                spacing: 0.0,
                runSpacing: 16.0,
                children: cardDataList.map((cardData) {
                  return buildCard(context, cardData);
                }).toList(),
              );
            },
          ),
          const Row(
            children: [
              // Ajoutez les widgets de la troisième ligne ici
            ],
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              int columnsCount = (constraints.maxWidth / 768).floor();
              return Wrap(
                spacing: 0.0,
                runSpacing: 16.0,
                children: cardDataList.map((cardData) {
                  return buildCard(context, cardData);
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }

  List<CardData> cardDataList = [
    CardData('Button', '5 Components', Icons.back_hand, Colors.red),
    CardData('Input', '2 Components', Icons.input_outlined, Colors.red),
    CardData('Card', '4 Components', Icons.card_giftcard, Colors.red),
    CardData('Header', '4 Components', Icons.headset_rounded, Colors.red),
    // Ajoutez d'autres éléments de votre liste ici
  ];

  Widget buildCard(BuildContext context, CardData cardData) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 150,
        child: Cartsimple(
          title: cardData.title,
          subTitle: cardData.subTitle,
          icon: cardData.icon,
          iconColor: cardData.iconColor,
        ),
      ),
    );
  }
}

class CardData {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;

  CardData(this.title, this.subTitle, this.icon, this.iconColor);
}
