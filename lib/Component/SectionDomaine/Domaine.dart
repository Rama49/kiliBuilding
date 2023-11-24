import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';
import 'package:kiliwebsite/Reutilisable/Simpleprops.dart';

class Domaine extends StatelessWidget {
  const Domaine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
        child: Row(
          children: [
            // Image goes here
            SizedBox(width: 10), // Add spacing between the image and text
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 200),
                  child: Text(
                    'React jS', // Replace this with your actual blog title
                    style: TextStyle(
                      color:
                          Colors.red, // Set your desired title text color
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center, // Align text to the left
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
                SizedBox(
                    height:
                        10), // Add spacing between the title and subtitle
                Padding(
                  padding: EdgeInsets.only(left: 110),
                  child: Text(
                    'React jS est un framework de développeurs',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        10), // Add spacing between the subtitle and other content
                Padding(
                  padding: EdgeInsets.only(
                    left: 60,
                    top: 50,
                  ),
                  child: Text(
                    'À mesure que vous progressez en tant que développeur, vous êtes plus\n susceptible d’utiliser des technologies qui vous aident à faire plus \nen écrivant moins de code. Un framework frontend solide comme\n Tailwind CSS est un moyen d’y parvenir.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center, // Align text to justify
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 160,
                top: 30,
              ),
              child: Image.asset(
                'assets/MacBook.png', // Replace with the path to your image asset
                height: 225, // Adjust the height of the image as needed
                width: 450, // Adjust the width of the image as needed
              ),
            ),
          ],
        ),
                  ),
                  Simpleprop()
                ],
              ),
            )));
  }
}
