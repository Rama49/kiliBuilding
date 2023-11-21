import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';

class CardSecurity extends StatelessWidget {
  const CardSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/securité.png',
                      // width: 284.429, // Définissez la largeur de l'image
                      // height: 173.502, // Définissez la hauteur de l'image
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'L’importance de nos services de sécurité',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Lorem ipsum dolor sit amet\n consectetur. Ultrices morbi\n pretium quam non. Facilisis ut\n donec cras elit cras lorem\n dolor.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
        
            // Card 2
            Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/securité.png',
                      // width: 284.429, // Définissez la largeur de l'image
                      // height: 173.502, // Définissez la hauteur de l'image
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'L’importance de nos services de sécurité',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Lorem ipsum dolor sit amet\n consectetur. Ultrices morbi\n pretium quam non. Facilisis ut\n donec cras elit cras lorem\n dolor.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            // Card 3
            Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/securité.png',
                      // width: 284.429, // Définissez la largeur de l'image
                      // height: 173.502, // Définissez la hauteur de l'image
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'L’importance de nos services de sécurité',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Lorem ipsum dolor sit amet\n consectetur. Ultrices morbi\n pretium quam non. Facilisis ut\n donec cras elit cras lorem\n dolor.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            // Card 4
            Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/securité.png',
                      // width: 284.429, // Définissez la largeur de l'image
                      // height: 173.502, // Définissez la hauteur de l'image
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'L’importance de nos services de sécurité',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Lorem ipsum dolor sit amet\n consectetur. Ultrices morbi\n pretium quam non. Facilisis ut\n donec cras elit cras lorem\n dolor.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
        
                ],
              ),
            ),
            
          ],
        ),
        Bouton(Title:"Voir Plus")
      ],
    );
  }
}
