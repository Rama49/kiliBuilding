import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Css extends StatelessWidget {
  const Css({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('composants').doc('6YahlKgqpo3VSFBGkXL6').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (!snapshot.hasData || !snapshot.data!.exists) {
          return Text("Aucune donnée trouvée");
        }

        var cssCode = snapshot.data?['css'];

        return SingleChildScrollView(
          child: Text(
            cssCode,
            textAlign: TextAlign.left,
          ),
        );
      },
    );
  }
}
