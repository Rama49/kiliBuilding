import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20, top: 40),
            color: Color.fromARGB(1, 210, 152, 207),
            child: Text(
                "Créer votre site web ou application\n 10 fois plus rapide avec Kili APP builder",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
        ],
      ),
    );
  }
}
