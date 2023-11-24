import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Reutilisable/BouttonOrang.dart';
import 'package:kiliwebsite/Reutilisable/InputForm.dart';
import 'package:kiliwebsite/Reutilisable/Title.dart';

class LoginSignUp extends StatelessWidget {
  final text1;
  final text2;

  const LoginSignUp({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFFF44336),
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Logo.png"),
            ],
          ),
        ),
        TitleReu(titre: "Bienvenue", soustexte: '',),
        Text(text1),
        Row(children: [Icon(Icons.facebook), Icon(Icons.facebook)]),
        Text("Ou"),
        InputForm(placeholder: "Email"),
        Bouton(Title: "Se connecter"),
        Row(
          children: [Text(text2), BouttonOrange(title: "S'inscrire", onPress: () {  },)],
        ),
        Container(
            color: Color(0xFFF44336),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "©2023, Tous droits reservés",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ))
      ],
    );
  }
}
