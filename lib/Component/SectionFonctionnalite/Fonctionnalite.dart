 import 'package:flutter/material.dart';

class Fonctionnalite extends StatelessWidget {
  const Fonctionnalite({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image.asset('img1.png'),
                SizedBox(width: 10),
                Text(
                  'Tous les fonctionnalités disponibles',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Montserrat',
                    fontSize: 34,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img1.png'),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nom de domaine',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur . Mauris etiam id \n volutpat ut sed hac. Vel donec mauris turpis venenatis sed \n  faucibus.  Lorem ipsum dolor sit amet consectetur. Mauris \n etiam id volutpat ut sed hac. Vel donec mauris turpis \n venenatis sed faucibus.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Image.asset('blog.png'),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blog',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur . Mauris etiam id \n volutpat ut sed hac. Vel donec mauris turpis venenatis sed \n  faucibus.  Lorem ipsum dolor sit amet consectetur. Mauris \n etiam id volutpat ut sed hac. Vel donec mauris turpis \n venenatis sed faucibus.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img3.png'),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Formulaire',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur . Mauris etiam id \n volutpat ut sed hac. Vel donec mauris turpis venenatis sed \n  faucibus.  Lorem ipsum dolor sit amet consectetur. Mauris \n etiam id volutpat ut sed hac. Vel donec mauris turpis \n venenatis sed faucibus.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Image.asset('analyse.png'),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Analyste d’audience côté admin',
                      style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur . Mauris etiam id \n volutpat ut sed hac. Vel donec mauris turpis venenatis sed \n  faucibus.  Lorem ipsum dolor sit amet consectetur. Mauris \n etiam id volutpat ut sed hac. Vel donec mauris turpis \n venenatis sed faucibus.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
