import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    var Screen = MediaQuery.of(context).size;

    return FutureBuilder(
      future: getImageUrl(), // Appel de la fonction pour obtenir l'URL de l'image depuis Firebase Storage
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        if (snapshot.hasError) {
          return Text('Erreur: ${snapshot.error}');
        }

        if (!snapshot.hasData || snapshot.data == null) {
          return Text('Aucune donnée trouvée');
        }

        String imageUrl = snapshot.data.toString();

        return Screen.width > 768
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
                    Container(
                      child: Image.network(
                        imageUrl, // Utiliser l'URL de l'image récupérée depuis Firebase Storage
                        width: double.infinity,
                        height: 400,
                      ),
                    ),
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
                    Image.network(
                      imageUrl, // Utiliser l'URL de l'image récupérée depuis Firebase Storage
                      height: 225,
                    ),
                  ],
                ),
              );
      },
    );
  }

  Future<String> getImageUrl() async {
    // Remplacez 'votre-image.jpg' par le nom réel de votre image dans la collection "composant" de Firebase Storage
    String imageName = 'navbar.pgn';

    try {
      var imageUrl = await firebase_storage.FirebaseStorage.instance
          .ref('composants/$imageName')
          .getDownloadURL();

      return imageUrl;
    } catch (e) {
      print('Erreur lors du chargement de l\'image depuis Firebase Storage: $e');
      return '';
    }
  }
}
