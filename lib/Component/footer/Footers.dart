import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiliwebsite/Reutilisable/FooterElement.dart';
import 'package:kiliwebsite/Reutilisable/Input.dart';
import 'package:kiliwebsite/Reutilisable/InputForm.dart';
import 'package:kiliwebsite/Reutilisable/Inputfooter.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Footers extends StatelessWidget {
  const Footers({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width > 768
        ? Container(
            color: Color(0xFFF44336),
            padding: const EdgeInsets.only(bottom: 50),
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: const Column(children: [
              SizedBox(height: 25),
              Text("S'abonner a notre Newsletter",
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              SizedBox(height: 25),
              MyInput(textInput: "E-mail"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FooterElement(
                      titre: "Entreprise",
                      text1: "A propos de nous",
                      text4: "Pourquoi nous choisir",
                      text2: "Tarification",
                      text3: "Temoignage"),
                  FooterElement(
                      titre: "Ressources",
                      text1: "Politique prive",
                      text4: "Termes & conditions",
                      text2: "Blog",
                      text3: "Contacter nous"),
                  FooterElement(
                      titre: "Produits",
                      text1: "Gestion de projet",
                      text4: "Suivi du temps",
                      text2: "Calendrier",
                      text3: "enerer des prospects"),
                  Column(
                    children: [
                      Text(
                        "Copyright 2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        children: [
                          Icon(Icons.facebook),
                          Icon(Icons.facebook), 
                          Icon(Icons.facebook),
                          Icon(Icons.facebook),
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
          )
        : Container(
            color: Color(0xFFF44336),
            padding: const EdgeInsets.only(bottom: 20),
            margin: const EdgeInsets.only(top: 50, bottom: 10),
            child: const Column(children: [
              SizedBox(height: 25),
              Text("S'abonner a notre Newsletter",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
              SizedBox(height: 25),
              Inputfooter(textInput: "email"),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 30),
                  Text("Entreprise",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("A propos de nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Tarification",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Temoignages",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Pourquoi nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Text("Ressources",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("Politique prive",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Termes & conditions",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Blog",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Contacter nous",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Text("Produits",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("Gestion de projet",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Suivi du temps",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("Calendrier",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  Text("generer des prospects",
                      style: TextStyle(color: Colors.white, fontSize: 17)),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      Text(
                        "Copyright 2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook),
                        ],
                      )
                    ],
                  )
                ],
              )
            ]),
          );
  }
}
