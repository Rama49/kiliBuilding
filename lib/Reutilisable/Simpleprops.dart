import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/DetailCompBouton/HtmlcssjsBouton.dart';
import 'package:kiliwebsite/Component/DetailCompInput/HtmlcssjsInput.dart';
import 'package:kiliwebsite/Component/DetailComposant/Htmlcssjs.dart';
import 'package:kiliwebsite/Component/DetailComposantCard/HtmlcssjsCard.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';

class Simpleprop extends StatelessWidget {
  const Simpleprop({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 90),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Center(
                child: buildRow(
                  context,
                  [
                    CardNavigationData('Navbar', '1 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                    CardNavigationData('Card', '1 Components',
                        Icons.card_giftcard, Colors.red, HtmlcssjsCard()),
                    CardNavigationData('Input', '1 Components',
                        Icons.card_giftcard, Colors.red, HtmlcssjsInput()),
                    CardNavigationData('Bouton', '1 Components',
                        Icons.card_giftcard, Colors.red, htmlcssjsBouton()),
                  ],
                ),
              ),
              //utez des lignes supplémentaires au besoin
            ],
          );
        },
      ),
    );
  }

  Widget buildRow(BuildContext context, List<CardNavigationData> cardDataList) {
    return Wrap(
      spacing: 12, // Ajustez l'espacement horizontal entre les cartes
      runSpacing: 16.0, // Ajustez l'espacement vertical entre les cartes
      alignment: WrapAlignment.center, // Centrez les cartes
      children: cardDataList.map((cardData) {
        return buildCard(context, cardData);
      }).toList(),
    );
  }

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
        child: Cartsimple(
          title: cardData.title,
          subTitle: cardData.subTitle,
          icon: cardData.icon,
          iconColor: cardData.iconColor,
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
