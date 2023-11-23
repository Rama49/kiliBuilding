import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';
import 'card_example.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SizedBox(height: 20),
          TitleReu(titre: "Solution"),
          SizedBox(height: 20),  // Add some spacing between the blog text and cards
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'Ngirane At Tidiani',
                  subTitle:
                      'Lorem ipsum dolor sit amet consectetur.\n Turpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'Ngirane At Tidiani',
                  subTitle:
                      'Lorem ipsum dolor sit amet consectetur.\n Turpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'Ngirane At Tidiani',
                  subTitle:
                      'Lorem ipsum dolor sit amet consectetur. \nTurpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add some spacing between the two sections
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'Another Title',
                  subTitle: 'Lorem ipsum dolor sit amet consectetur.\n Turpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'Yet Another Title',
                  subTitle: 'Lorem ipsum dolor sit amet consectetur.\n Turpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
              SizedBox(
                height: 250,
                width: 330,
                child: CardExample(
                  image: "assets/rectangle.png",
                  img: "assets/Ellipse1.png",
                  title: 'And Another Title',
                  subTitle: 'Lorem ipsum dolor sit amet consectetur.\n Turpis a et elit luctus tincidunt orci in sed.',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
