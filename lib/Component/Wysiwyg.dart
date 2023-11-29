import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class Wiszwzg extends StatefulWidget {
  @override
  _WiszwzgState createState() => _WiszwzgState();
}

class _WiszwzgState extends State<Wiszwzg> {
  final quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editeur WYSIWYG'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Appel de la fonction pour sauvegarder dans Firebase ici
              saveToFirebase(_controller.document.toPlainText());
            },
          ),
        ],
      ),
      body: quill.QuillEditor(
        configurations: null,
        focusNode: false,
        scrollController: false,
      ),
    );
  }

  // Fonction pour sauvegarder dans Firebase
  void saveToFirebase(String code) {
    // Appel à Cloud Firestore pour sauvegarder le code
    // Remplacez 'collectionName' par le nom de votre collection dans Firestore
    FirebaseFirestore.instance.collection('collectionName').add({
      'code': code,
      'timestamp': FieldValue.serverTimestamp(),
    });

    // Affiche une confirmation à l'utilisateur
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Code sauvegardé avec succès !'),
      ),
    );
  }
}
