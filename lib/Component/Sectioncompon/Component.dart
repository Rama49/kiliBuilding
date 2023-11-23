import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBlog/card_list.dart';
import 'package:kiliwebsite/Component/SectionSecurite/Securite.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';
import 'package:kiliwebsite/Reutilisable/TitleReu.dart';


class Component extends StatelessWidget {
  const Component({Key? key});

  @override
  Widget build(BuildContext context) {
    return 
     
    Padding(
      padding: EdgeInsets.only(top: 90),
      child: Column(
        children: [
           SizedBox(height: 20),
          TitleReu(titre: "Composants", soustexte: '',),
          buildRow(
            context,
            [
              CardNavigationData('Button', '5 Components', Icons.back_hand, Colors.red, Security()),
              CardNavigationData('Input', '2 Components', Icons.input_outlined, Colors.red, Security()),
              CardNavigationData('Card', '4 Components', Icons.card_giftcard, Colors.red, Security()),
              CardNavigationData('Header', '4 Components', Icons.headset_rounded, Colors.red,Security()),
            ],
            
          ),
          // Les autres rangées vont ici
           buildRow(
            context,
            [
              CardNavigationData('Grids', '5 Components', Icons.grid_goldenratio, Colors.red, Security()),
              CardNavigationData('Selects', '2 Components', Icons.select_all, Colors.red, Security()),
              CardNavigationData('Route', '4 Components', Icons.route_outlined, Colors.red, Security()),
              CardNavigationData('Border', '4 Components', Icons.border_bottom_outlined, Colors.red,Security()),
            ],
            
          ),
        ],
        
      ),
    );
    
  }

  Widget buildRow(BuildContext context, List<CardNavigationData> cardDataList) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
      child: Padding(
        padding: EdgeInsets.all(25),
        child: Card(
          color: Colors.white,
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

  CardNavigationData(this.title, this.subTitle, this.icon, this.iconColor, this.route);
}


