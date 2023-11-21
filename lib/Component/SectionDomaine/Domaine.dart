import 'package:flutter/material.dart';

class Domaine extends StatelessWidget {
  const Domaine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            // Image goes here
            Image.asset(
              'assets/img2.png',  // Replace with the path to your image asset
              height: 100,  // Adjust the height of the image as needed
              width: 100,   // Adjust the width of the image as needed
            ),
            SizedBox(width: 10),  // Add spacing between the image and text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tailwind CSS',  // Replace this with your actual blog title
                  style: TextStyle(
                    color: Colors.red, // Set your desired title text color
                    fontSize: 35,
                    fontWeight: FontWeight.w700, // Use FontWeight.w700 for bold
                  ),
                ),
                SizedBox(height: 10),  // Add spacing between the title and subtitle
                Text(
                  'Tailwind CSS est un framework permettant aux développeurs\n de personnaliser totalement et simplement le design\n de leur application ou de leur ..',
                  style: TextStyle(
                    color: Colors.black, // Set your desired subtitle text color
                    fontSize: 16,
                    fontWeight: FontWeight.normal, // Adjust the font weight as needed
                  ),
                ),
                SizedBox(height: 10),  // Add spacing between the subtitle and other content
                Text(
                  'Autre sous-titre',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 33, 114), // Set your desired other subtitle text color
                    fontSize: 16,
                    fontWeight: FontWeight.normal, // Adjust the font weight as needed
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
