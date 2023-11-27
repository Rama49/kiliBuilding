import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';

class Bibliotheque extends StatelessWidget {
  const Bibliotheque({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width > 768
        ? Container(
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur.",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(bottom: 20, top: 20, left: 40, right: 40),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(42, 168, 102, 80),
                    borderRadius:
                        BorderRadius.circular(10.0), // Définissez le rayon ici
                  ),
                  child: Text(
                      "Créer votre site web ou application 10\n fois plus rapide avec Kili APP builder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Bouton(Title: "Creer votre app")),
                      SizedBox(height: 60)
                    ],
                  ),
                )
              ],
            ),
          )
        : Container(
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
                  padding: EdgeInsets.only(bottom: 20, top: 20),
                  color: const Color.fromARGB(42, 109, 76, 65),
                  child: Text(
                      "Créer votre site web ou application\n fois plus rapide avec Kili APP builder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(child: Bouton(Title: "Creer votre app")),
                      SizedBox(height: 60)
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
