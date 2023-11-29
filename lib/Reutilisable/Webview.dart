import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Webview extends StatefulWidget {
  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  String selectedOption = "Home";
  TextEditingController searchController = TextEditingController();
  List<String> options = ["Home", "Contact", "Galerie", "Nos activités"];

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible d\'ouvrir l\'URL $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ... autres widgets

        ElevatedButton(
          onPressed: () {
            String url = 'https://bakeli-tech.euleukcommunication.sn/'; // Remplacez par votre URL
            _launchURL(url);
          },
          child: Text('Ouvrir URL'),
        ),

        // ... autres widgets
      ],
    );
  }
}