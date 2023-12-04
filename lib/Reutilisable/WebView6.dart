import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WebViewPlatform.instance = WebWebViewPlatform();
  runApp(const MaterialApp(home: Webview6()));
}

class Webview6 extends StatefulWidget {
  const Webview6();

  @override
  Webview6State createState() => Webview6State();
}

class Webview6State extends State<Webview6> {
  PlatformWebViewController? _controller;
  String id = 'a2UmStVWrXLfC4fw1Vpn'; // Remplacez avec votre ID réel

  @override
  void initState() {
    super.initState();
    _loadUrlFromDatabase();
  }

  Future<String> _fetchUrlFromDatabase(String id) async {
    try {
      // Récupérer la référence à la collection "Projets"
      CollectionReference projets = FirebaseFirestore.instance.collection('Projets');

      // Récupérer le document avec l'ID spécifié
      DocumentSnapshot projetSnapshot = await projets.doc(id).get();

      // Vérifier si le document existe
      if (projetSnapshot.exists) {
        // Récupérer la valeur du champ "lienProjet" du document
        var lienProjet = projetSnapshot['lienProjet'];
        return lienProjet;
      } else {
        return ''; // Retourner une valeur par défaut si le document n'existe pas
      }
    } catch (e) {
      print("Erreur lors de la récupération depuis Firestore: $e");
      return '';
    }
  }

  Future<void> _loadUrlFromDatabase() async {
    final String url = await _fetchUrlFromDatabase(id);

    setState(() {
      _controller = PlatformWebViewController(
        const PlatformWebViewControllerCreationParams(),
      )..loadRequest(
          LoadRequestParams(
            uri: Uri.parse(url),
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _controller != null
          ? PlatformWebViewWidget(
              PlatformWebViewWidgetCreationParams(controller: _controller!),
            ).build(context)
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
