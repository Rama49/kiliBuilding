import 'package:flutter/material.dart';

class Fonctionnalite extends StatelessWidget {
  const Fonctionnalite({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 50.0), // Ajout de la marge
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('img1.png'),
                  SizedBox(width: 10),
                  Text(
                    'Tous les fonctionnalités disponibles',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFf44336),
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('img1.png'),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nom de domaine',
                        style: TextStyle(
                          color: Color(0xFFf44336),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur.R\nMauris etiam id  volutpat ut sed hac.\n Vel donec mauris  turpis venenatis sed. \n   Lorem ipsum dolor sit amet consectetur.  \n Mauris etiam id volutpat ut sed hac.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Image.asset('blog.png'),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blog',
                        style: TextStyle(
                          color: Color(0xFFf44336),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur.\n Mauris etiam id  volutpat ut sed hac.\n Vel donec mauris  turpis venenatis sed. \n   Lorem ipsum dolor sit amet consectetur.  \n Mauris etiam id volutpat ut sed hac.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('img3.png'),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Formulaire',
                        style: TextStyle(
                          color: Color(0xFFf44336),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur.\n Mauris etiam id  volutpat ut sed hac.\n Vel donec mauris  turpis venenatis sed. \n   Lorem ipsum dolor sit amet consectetur.  \n Mauris etiam id volutpat ut sed hac.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Image.asset('analyse.png'),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Analyste d’audience côté admin',
                        style: TextStyle(
                          color: Color(0xFFf44336),
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.3,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur.\n Mauris etiam id  volutpat ut sed hac.\n Vel donec mauris  turpis venenatis sed. \n   Lorem ipsum dolor sit amet consectetur.  \n Mauris etiam id volutpat ut sed hac.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                        ),
                        textAlign: TextAlign.justify,
                      ),
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
