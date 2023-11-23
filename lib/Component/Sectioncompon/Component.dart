import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/SectionBlog/card_list.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

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
          TitleReu(titre: "Composants"),
          buildRow(
            context,
            [
              CardNavigationData('Button', '5 Components', Icons.back_hand, Colors.red, CardList()),
              CardNavigationData('Input', '2 Components', Icons.input_outlined, Colors.red, CardList()),
              CardNavigationData('Card', '4 Components', Icons.card_giftcard, Colors.red, CardList()),
              CardNavigationData('Header', '4 Components', Icons.headset_rounded, Colors.red,CardList()),
            ],
            
          ),
          // Les autres rangées vont ici
           buildRow(
            context,
            [
              CardNavigationData('Grids', '5 Components', Icons.grid_goldenratio, Colors.red, CardList()),
              CardNavigationData('Selects', '2 Components', Icons.select_all, Colors.red, CardList()),
              CardNavigationData('Route', '4 Components', Icons.route_outlined, Colors.red, CardList()),
              CardNavigationData('Border', '4 Components', Icons.border_bottom_outlined, Colors.red,CardList()),
            ],
            
          ),
           buildRow(
            context,
            [
              CardNavigationData('Pagination', '5 Components', Icons.pages_outlined, Colors.red, CardList()),
              CardNavigationData('Sidebar', '2 Components', Icons.view_sidebar, Colors.red, CardList()),
              CardNavigationData('Toggles', '4 Components', Icons.toggle_off_outlined, Colors.red, CardList()),
              CardNavigationData('Navigation', '4 Components', Icons.navigate_before_outlined, Colors.red,CardList()),
            ],
            
          ),
           buildRow(
            context,
            [
              CardNavigationData('Button', '5 Components', Icons.bolt_outlined, Colors.red, CardList()),
              CardNavigationData('Input', '2 Components', Icons.input_rounded, Colors.red, CardList()),
              CardNavigationData('Text', '4 Components', Icons.text_format_outlined, Colors.red, CardList()),
              CardNavigationData('Table', '4 Components', Icons.tab_outlined, Colors.red,CardList()),
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


