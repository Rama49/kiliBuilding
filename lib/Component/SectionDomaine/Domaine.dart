import 'package:flutter/material.dart';
import 'package:kiliwebsite/Component/Bouton.dart';
import 'package:kiliwebsite/Reutilisable/Cartsimple.dart';
import 'package:kiliwebsite/Reutilisable/Simpleprops.dart';

class Domaine extends StatelessWidget {
  const Domaine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 768) {
                      // Utiliser une disposition en ligne pour les écrans larges
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                             Column(
                            
                              children: [
                                Text(
                                  'React jS',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign
                                      .center, // Aligner le texte au centre horizontalement
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'React jS est un framework de développeurs',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'À mesure que vous progressez en tant que développeur, vous êtes plus\n susceptible d’utiliser des technologies qui vous aident à faire plus \nen écrivant moins de code. Un framework frontend solide comme\n Tailwind CSS est un moyen d’y parvenir.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          SizedBox(width: 20),
                             SizedBox(
                              height: 300,
                                width: 400, 
                               child: Image.asset(
                                'assets/MacBook.png',
                                // Ajustez la valeur selon vos besoins
                                                           ),
                             ),
                        ],
                      );
                    } else {
                      // Utiliser une disposition en colonne pour les écrans étroits
                      return Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'React jS',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                                softWrap: true,
                                overflow: TextOverflow.visible,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'React jS est un framework de développeurs',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'À mesure que vous progressez en tant que développeur, vous êtes plus\n susceptible d’utiliser des technologies qui vous aident à faire plus \nen écrivant moins de code. Un framework frontend solide comme\n Tailwind CSS est un moyen d’y parvenir.',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Image.asset(
                            'assets/MacBook.png',
                            height: 225,
                          ),
                        ],
                      );
                    }
                  },
                ),
                Simpleprop(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
