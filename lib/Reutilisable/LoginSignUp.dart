import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
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
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("Logo.png"),
              ],
            ),
          ),
          const TitleReu(
            titre: "Bienvenue",
            soustexte: '',
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Text(
              text1,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          
          
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Icon(Icons.facebook), Icon(Icons.facebook)],
          ),
          const Text("Ou"),
          SizedBox(
            width: 700,
            child: Column(
              children: [
                InputForm(placeholder: "Email"),
                const SizedBox(height: 20),
                InputForm(placeholder: "Mot de Passe"),
              ],
            ),
          ),
          const Bouton(Title: "Se connecter"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                onPress: () {},
              )
            ],
          ),
          Container(
            color: const Color(0xFFF44336),
            padding: const EdgeInsets.only(top: 20, bottom: 20),
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
          hintText: placeholder,
          border: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Colors.black),
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
