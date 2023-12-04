import 'package:flutter/material.dart';

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;
    return Screen.width > 768
     ? Container(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Rendu',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18, // Changer la taille du texte du titre si nécessaire
                fontWeight: FontWeight.bold, // Changer le style du texte du titre si nécessaire
              ),
            ),
          ),
          // SizedBox(height: 20),
          Container(
            child: Image.asset('assets/navbar.png',width: double.infinity,height: 400,)),
        ],
           ),
      )
     :Container(
       child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Text(
              'Rendu',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18, // Changer la taille du texte du titre si nécessaire
                fontWeight: FontWeight.bold, // Changer le style du texte du titre si nécessaire
              ),
            ),
          ),
          // SizedBox(height: ),
          
           Image.asset('assets/navbar.png',  height: 225,),
        ],
           ),
     );
  }
}
