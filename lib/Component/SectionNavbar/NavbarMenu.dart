// import 'package:easy_membership/components/button.dart';
import 'dart:html';

import 'package:flutter/material.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({Key? key});

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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      '../../../assets/Logo.png', // Remplacez par le chemin de votre logo
                      height:
                          30, // Ajustez la hauteur du logo selon vos besoins
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Domaine',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.753,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Sécurité',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.753,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Fonctionnalités',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.753,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Blog',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.753,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/contactpage');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(6.0),
                        child: const Text(
                          'Nous contacter',
                          style: TextStyle(color: Color(0xFFF44336),
                            fontSize: 15,
                        fontWeight: FontWeight.w700,
                        ),
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
