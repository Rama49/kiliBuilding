import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';

class Bibliotheque extends StatelessWidget {
  const Bibliotheque({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFf44336), Color(0xFF000000)],
        ),
      ),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(bottom: 40),
              child: Image.asset("Logo.png")),
          Text(
            "Lorem ipsum dolor sit amet consectetur.",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 40),
            color: Color.fromARGB(1, 210, 152, 207),
            child: Text(
                "Créer votre site web ou application\n 10 fois plus rapide avec Kili APP builder",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(child: Bouton(Title: "Creer votre app")),
              SizedBox(height: 60)
              ],
            ),
          )
        ],
      ),
    );
  }
}
