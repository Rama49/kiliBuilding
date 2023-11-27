import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: EdgeInsets.all(10),
      
      child: Column(
        children: [
          // Première ligne
          Text(
            'Composant',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
                ),
          ),
          const Row(
            children: [
              // Ajoutez les widgets de la première ligne ici
            ],
          ),

          // Grille de cartes
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

          // Deuxième ligne
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
          // Troisième ligne
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

  List<CardNavigationData> cardDataList = [
    CardNavigationData(
        'Button', '5 Components', Icons.back_hand, Colors.red, Security()),
    CardNavigationData(
        'Input', '2 Components', Icons.input_outlined, Colors.red, Security()),
    CardNavigationData(
        'Card', '4 Components', Icons.card_giftcard, Colors.red, Security()),
    CardNavigationData('Header', '4 Components', Icons.headset_rounded,
        Colors.red, Security()),
    // Ajoutez d'autres éléments de votre liste ici
  ];

  Widget buildCard(BuildContext context, CardNavigationData cardData) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailComposant()),
        );
      },
      child: Card(
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
      ),
      splashColor: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    );
  }
}

class CardNavigationData {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;
  final Widget route;

  CardNavigationData(
      this.title, this.subTitle, this.icon, this.iconColor, this.route);
}