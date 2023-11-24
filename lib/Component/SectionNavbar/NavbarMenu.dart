// import 'package:easy_membership/components/button.dart';
import 'dart:html';

import 'package:flutter/material.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return screenSize.width > 768
        ? PreferredSize(
            preferredSize: Size(screenSize.width, 80),
            child: Container(
              color: const Color.fromRGBO(244, 67, 54, 1),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      '../../../assets/Logo.png', // Remplacez par le chemin de votre logo
                      width:
                          100, // Ajustez la hauteur du logo selon vos besoins
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250, right: 80),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/Security');
                            },
                            child: const Text(
                              'Projets',
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
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              'Templates',
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
                              'Composants',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/Conexion');
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                padding: const EdgeInsets.all(9.0),
                                child: const Text(
                                  'Se Connecter',
                                  style: TextStyle(
                                    color: Color(0xFFF44336),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Ajoutez d'autres éléments ici avec Spacer pour l'espacement
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/Inscription');
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.white),
                              ),
                              padding: const EdgeInsets.all(9.0),
                              child: const Text(
                                "S'inscrire",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 246, 238, 238),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : PreferredSize(
            preferredSize: Size(screenSize.width, 80),
            child: Container(
              color: const Color.fromRGBO(244, 67, 54, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Image.asset(
                          '../../../assets/Logo.png',
                          width: 90,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/Security');
                              },
                              child: const Text(
                                'Projets',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
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
                                'Templates',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
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
                                'Composants',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/Conexion');
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      padding: const EdgeInsets.all(9.0),
                                      child: const Text(
                                        'Se Connecter',
                                        style: TextStyle(
                                          color: Color(0xFFF44336),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                // Ajoutez d'autres éléments ici avec Spacer pour l'espacement
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, '/Inscription');
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 30),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    padding: const EdgeInsets.all(9.0),
                                    child: const Text(
                                      "S'inscrire",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 246, 238, 238),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
