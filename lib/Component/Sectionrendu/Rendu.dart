import 'package:flutter/material.dart';

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context).size;
    return screen.width > 768
        ? Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Rendu',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset('assets/navbar.png', width: double.infinity, height: 400),
              ],
            ),
          )
        : Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text(
                    'Rendu',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset('assets/navbar.png', height: 225),
              ],
            ),
          );
  }
}
