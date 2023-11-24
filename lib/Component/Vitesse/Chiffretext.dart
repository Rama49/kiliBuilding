import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/Chiffre.dart';

class Chiffres extends StatelessWidget {
  const Chiffres({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return screenSize.width > 768
        ? Container(
      color: Color(0xFFF44336),
      padding: const EdgeInsets.all(40),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Nombres(nombre: "70.000", mynombre: "Projet"),
          Nombres(nombre: "120.000", mynombre: "Composants"),
          Nombres(nombre: "1.000", mynombre: "visites/jour")
        ],
      ),
    )
    :Container(
      color: Color(0xFFF44336),
      width: double.infinity,
      padding: const EdgeInsets.all(40),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Nombres(nombre: "70.000", mynombre: "Projet"),
          SizedBox(height: 20),
          Nombres(nombre: "120.000", mynombre: "Composants"),
           SizedBox(height: 20),
          Nombres(nombre: "1.000", mynombre: "visites/jour")
        ],
      ),
    );
  }
}
