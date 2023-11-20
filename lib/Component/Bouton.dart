import 'package:flutter/material.dart';

class Bouton extends StatelessWidget {
  const Bouton({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFfff7f5),
              side: const BorderSide(color: Color(0xFFF44336), width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text(
              'Voir plus',
              style: TextStyle(
                color: Color(0xFFF44336),
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
