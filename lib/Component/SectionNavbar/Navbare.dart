// import 'package:easy_membership/components/button.dart';
import 'dart:html';

import 'package:flutter/material.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Drawer(
    
      child: Container(
      color: Color.fromRGBO(244, 67, 54, 1),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Image.asset(
               "../../../assets/Logo.png", // Remplacez par le chemin de votre logo
               width: 150, // Ajustez la hauteur du logo selon vos besoins
             ),
             SizedBox(height: 25),
            Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/AncrePRO');
                    },
                    child: const Text(
                      'Projets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/Ancretempl');
                    },
                    child: const Text(
                      'Templates',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/AncreCompo');
                    },
                    child: const Text(
                      'Composants',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    margin: const EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/Conexion');
                      },
                      
                      child: Container(
                        
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          
                          borderRadius: BorderRadius.circular(8.0),
                          
                        ),
                        padding: const EdgeInsets.all(9.0),
                        child: Container(
                          alignment: Alignment.center,
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
                  ),
                  
                  // Ajoutez d'autres éléments ici avec Spacer pour l'espacement
                  InkWell(
                    
                    onTap: () {
                      Navigator.pushNamed(context, '/Inscription');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        
                        width: 130,
                        margin: const EdgeInsets.only(left: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.white),
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          alignment: Alignment.center,
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
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}
