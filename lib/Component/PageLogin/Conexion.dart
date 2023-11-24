import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/LoginSignUp.dart';

class Conexion extends StatelessWidget {
  const Conexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginSignUp(text1: "Se connecter avec:", text2: "Voulez-vous s'incrire"),
    );
  }
}
