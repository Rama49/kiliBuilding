import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Component/PageLogin/Conexion.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';
import 'package:kiliwebsite/Reutilisable/InputForm.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class LoginSignUp extends StatelessWidget {
  final text1;
  final text2;

  const LoginSignUp({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Text("Bienvenue", style: TextStyle(color: const Color(0xFFF44336), fontSize: 20)),
          ),
          Container(
            width: 700,
            color: Colors.white,
            child: Column(children: [
              Container(
                // margin: EdgeInsets.only(bottom: 5),
                child: Text(
                  text1,
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
    SizedBox(width: 16.0), // Espace entre les icônes, ajustez selon vos besoins
   
  ],
),SizedBox(height: 10),
              const Text("Ou"),
              SizedBox(
                width: 400,
                child: Column(
                  children: [
                    InputForm(placeholder: "Nom Complet"),
                    InputForm(placeholder: "Email"),
                    InputForm(placeholder: "Mot de Passe"),
                    InputForm(placeholder: "Confirmer Mot de Passe"),
                  ],
                ),
              ),
              const Bouton(Title: "S'inscrire",),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text2,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  BouttonOrange(
                    title: "S'inscrire",
                   onPress: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Connexion()));
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
    );
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