// import 'package:easy_membership/components/button.dart';
import 'dart:html';

import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Drawer(
      backgroundColor: Colors.green,
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Image.asset(
                      '../../../assets/Logo.png', // Remplacez par le chemin de votre logo
                      height: 30, // Ajustez la hauteur du logo selon vos besoins
                    ),
                    // SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Domaine',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Sécurité',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Fonctionnalités',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Blog',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contactpage');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(5.0),
                        child: const Text(
                          'Nous contacter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
