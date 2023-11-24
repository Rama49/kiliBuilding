import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/LoginSignUp.dart';

class Inscription extends StatelessWidget {
  const Inscription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: LoginSignUp(
                text1: "S'inscrire avec:",
                text2: "Vous avez deja un compte:")));
  }
}
