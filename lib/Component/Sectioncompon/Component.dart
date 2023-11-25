import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';

class Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculer le nombre de colonnes en fonction de la largeur de l'écran
          int columnsCount = (constraints.maxWidth / 768).floor(); // Ajustez la largeur de la carte selon vos besoins

          return Wrap(
            spacing: 0.0, // Aucun espace horizontal entre les éléments
            runSpacing: 16.0, // Espace vertical entre les lignes
            children: cardDataList.map((cardData) {
              return buildCard(context, cardData);
            }).toList(),
          );
        },
      ),
    );
  }

  List<CardNavigationData> cardDataList = [
    CardNavigationData('Button', '5 Components', Icons.back_hand, Colors.red, Security()),
    CardNavigationData('Input', '2 Components', Icons.input_outlined, Colors.red, Security()),
    CardNavigationData('Card', '4 Components', Icons.card_giftcard, Colors.red, Security()),
    CardNavigationData('Header', '4 Components', Icons.headset_rounded, Colors.red, Security()),
    // Ajoutez d'autres éléments de votre liste ici
  ];

  Widget buildCard(BuildContext context, CardNavigationData cardData) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => cardData.route),
        );
      },
      child: Card(
        color: Colors.white,
        child: Container(
          height: 150, // Ajustez la hauteur selon vos besoins
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
