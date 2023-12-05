import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/Webview6.dart';

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
      Webview6()
      
    );
  }

}

class MyList6 extends StatefulWidget{
  @override
  _MyList6State createState() => _MyList6State();
}

class _MyList6State extends State<MyList6> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Header
        Container(
         
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Spacer(),
              ElevatedButton.icon(
                onPressed: () {
                  // Ajoutez ici la logique pour le bouton "Exporter le code"
                },
                icon: Icon(Icons.crop_square,
                    color: Colors.white), // Remplacez par l'icône "rect"
                label: Text("Exporter le code",
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Couleur du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                ),
              ),
            ],
          ),
        ),
        // Contenu de la liste
        Expanded(
  child: Webview6(),
),

      ],
    );
  }
}
