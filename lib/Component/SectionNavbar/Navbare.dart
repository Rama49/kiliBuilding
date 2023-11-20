// import 'package:easy_membership/components/button.dart';
import 'dart:html';

import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 80),
      child: Container(
        color: const Color.fromRGBO(244, 67, 54, 1),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Image.asset(
                      '../../../assets/Logo.png', // Remplacez par le chemin de votre logo
                      height: 30, // Ajustez la hauteur du logo selon vos besoins
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Domaine',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(), // Utilisation de Spacer pour remplir l'espace disponible
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Sécurité',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Fonctionnalités',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Blog',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contactpage');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: const Text(
                          'Nous contacter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Spacer(),
                    // Ajoutez d'autres éléments ici avec Spacer pour l'espacement
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
