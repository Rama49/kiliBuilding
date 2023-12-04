import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class HtmlCard extends StatelessWidget {
  const HtmlCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('composants').doc('wi6azbXAbF5TG2hxfxzd').get(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (!snapshot.hasData || !snapshot.data!.exists) {
          return Text("Aucune donnée trouvée");
        }

        var htmlCode = snapshot.data?['html'];

        // Ajoutez ces deux lignes pour remplacer les sauts de ligne codés "\n" par de vrais sauts de ligne
        htmlCode = htmlCode.replaceAll(r'\n', '\n');

        return SingleChildScrollView(
          child: HighlightView(
            htmlCode,
            language: 'html',
            theme: githubTheme,
          ),
        );
      },
    );
  }
}
