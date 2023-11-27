import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Component/Inscription.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';
import 'package:kiliwebsite/Reutilisable/InputForm.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class Conexion extends StatelessWidget {
  const Conexion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFf1f1f1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: const Color(0xFFF44336),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("Logo.png", width: 90)],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Text("Bienvenue",
                style: TextStyle(color: const Color(0xFFF44336), fontSize: 20)),
          ),
          Container(
            width: 700,
            color: Colors.white,
            child: Column(children: [
              Container(
                // margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Inscrire avec",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/google.png", // Assurez-vous que le chemin est correct
                    width: 100, // Ajustez la largeur selon vos besoins
                    height: 40, // Ajustez la hauteur selon vos besoins
                  ),
                  Icon(Icons.facebook),
                  SizedBox(
                      width:
                          16.0), // Espace entre les icônes, ajustez selon vos besoins
                ],
              ),
              SizedBox(height: 10),
              const Text("Ou"),
              SizedBox(
                width: 400,
                child: Column(
                  children: [
                    InputForm(placeholder: "Email"),
                    InputForm(placeholder: "Mot de Passe"),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                const Bouton(Title: "S'inscrire"),
                Text("Mot de passe oublier?")
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous n'a ver pas de compte?",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  BouttonOrange(
                    title: "S'inscrire",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Inscription()));
                    },
                  )
                ],
              ),
            ]),
          ),
          Container(
            color: const Color(0xFFF44336),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "©2023, Tous droits reservés",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class InputForm extends StatelessWidget {
  final String placeholder;

  InputForm({required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          labelText: placeholder,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          // contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
