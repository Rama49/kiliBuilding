import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

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

        // Ajoutez ces deux lignes pour remplacer les sauts de ligne codés "\n" par de vrais sauts de ligne
        cssCode = cssCode.replaceAll(r'\n', '\n');

        return SingleChildScrollView(
          child: HighlightView(
            cssCode,
            language: 'css',
            theme: githubTheme,
          ),
        );
      },
    );
  }
}
