import 'package:flutter/material.dart';
import 'card_example.dart';

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Blog ',  // Replace this with your actual blog text
           style: TextStyle(
              color: Colors.red, // Set your desired text color
              fontSize: 35,
              fontWeight: FontWeight.w700, // Use FontWeight.w700 for bold
            ),
        ),
        SizedBox(height: 20),  // Add some spacing between the blog text and cards
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
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
              child: CardExample(
                image: "assets/rectangle.png",
                img: "assets/Ellipse1.png",
                title: 'Another Title',
                subTitle: 'Another subtitle here.',
              ),
            ),
            SizedBox(
              height: 250,
              child: CardExample(
                image: "assets/rectangle.png",
                img: "assets/Ellipse1.png",
                title: 'Yet Another Title',
                subTitle: 'Yet another subtitle here.',
              ),
            ),
            SizedBox(
              height: 250,
              child: CardExample(
                image: "assets/rectangle.png",
                img: "assets/Ellipse1.png",
                title: 'And Another Title',
                subTitle: 'And another subtitle here.',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
