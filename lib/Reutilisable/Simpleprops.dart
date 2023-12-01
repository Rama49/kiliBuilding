import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Component/DetailComposant/DetailComposant.dart';
import 'package:kiliwebsite/Component/DetailComposant/Htmlcssjs.dart';
import 'package:kiliwebsite/Component/SectionBlog/card_list.dart';
import 'package:kiliwebsite/Component/SectionNavbar/NavbarMenu.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
// import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';

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
                    CardNavigationData('Button', '5 Components', Icons.back_hand,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Input', '2 Components', Icons.input_outlined,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Card', '4 Components', Icons.card_giftcard,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Header', '4 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                  ],
                ),
              ),
              Center(
                child: buildRow(
                  context,
                  [
                    CardNavigationData('Navbar', '5 Components', Icons.back_hand,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Pagination', '2 Components', Icons.input_outlined,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Table', '4 Components', Icons.card_giftcard,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Header', '4 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                    // Ajoutez vos données de carte pour la deuxième ligne ici
                  ],
                  
                ),
              ),
               Center(
                child: buildRow(
                  context,
                  [
                    CardNavigationData('Navbar', '5 Components', Icons.back_hand,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Pagination', '2 Components', Icons.input_outlined,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Table', '4 Components', Icons.card_giftcard,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Header', '4 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                    // Ajoutez vos données de carte pour la deuxième ligne ici
                  ],
                  
                ),
              ),
               Center(
                child: buildRow(
                  context,
                  [
                    CardNavigationData('Navbar', '5 Components', Icons.back_hand,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Pagination', '2 Components', Icons.input_outlined,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Table', '4 Components', Icons.card_giftcard,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Header', '4 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                    // Ajoutez vos données de carte pour la deuxième ligne ici
                  ],
                  
                ),
              ),
               Center(
                child: buildRow(
                  context,
                  [
                    CardNavigationData('Navbar', '5 Components', Icons.back_hand,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Pagination', '2 Components', Icons.input_outlined,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Table', '4 Components', Icons.card_giftcard,
                        Colors.red, htmlcssjs()),
                    CardNavigationData('Header', '4 Components',
                        Icons.headset_rounded, Colors.red, htmlcssjs()),
                    // Ajoutez vos données de carte pour la deuxième ligne ici
                  ],
                  
                ),
              ),
              // Ajo
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
