import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class Rendu extends StatelessWidget {
  const Rendu({Key? key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getImageUrl(),
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

        return buildImageContainer(context, imageUrl);
      },
    );
  }

  Widget buildImageContainer(BuildContext context, String imageUrl) {
    var screen = MediaQuery.of(context).size;

    return Container(
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
              imageUrl,
              width: double.infinity,
              height: screen.width > 768 ? 400 : 225,
            ),
          ),
        ],
      ),
    );
  }

  Future<String> getImageUrl() async {
    String imageName = 'navbar.png';

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
