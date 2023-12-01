import 'package:flutter/material.dart';

class Cartsimple extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color iconColor;

  const Cartsimple({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.iconColor = Colors.red, required Widget route,
  });

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;
    return Screen.width > 768
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  8), // Ajustez la valeur du radius selon vos besoins
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            width: 230,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      color:
                          iconColor, // Utilisez la couleur de l'icône spécifiée
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(title),
                    SizedBox(
                      height: 15,
                    ),
                    Text(subTitle)
                  ]),
            ),
          )
        : Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  8), // Ajustez la valeur du radius selon vos besoins
              border: Border.all(
                color: Colors.red,
                width: 2,
              ),
            ),
            width: 390,
            height: 150,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      color:
                          iconColor, // Utilisez la couleur de l'icône spécifiée
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(title),
                    SizedBox(
                      height: 15,
                    ),
                    Text(subTitle)
                  ]),
            ),
          );
  }
}
