import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class boutonvideo extends StatefulWidget {
  @override
  _boutonvideoState createState() => _boutonvideoState();
}

class _boutonvideoState extends State<boutonvideo> {
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
            String url = 'https://youtu.be/tLk3hzI_rbk?si=SvEymblUmN7h7bdZ'; // Remplacez par votre URL
            _launchURL(url);
          },
          child: Text('lien vers notre site',  style: TextStyle(
                color: Color(0xFFF44336),
                fontSize: 15,
                fontWeight: FontWeight.w700,
              )),
        ),

        // ... autres widgets
      ],
    );
  }
}