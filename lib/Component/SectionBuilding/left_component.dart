import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class LeftComponent extends StatefulWidget {
  @override
  _LeftComponentState createState() => _LeftComponentState();
}

class _LeftComponentState extends State<LeftComponent> {
  List<String> componentNames = [];
  Map<String, String> componentCodes = {};
  String selectedCode = "Cliquez sur l'un des composants";

  @override
  void initState() {
    super.initState();
    // Chargez les données depuis Firestore pour le projet "Online Academy"
    loadComponentData("Online Academy");
  }

  void loadComponentData(String selectedProject) async {
    try {
      // Récupérez le document du projet sélectionné
      QuerySnapshot projectsSnapshot = await FirebaseFirestore.instance
          .collection('Projets')
          .where('NomProjet', isEqualTo: selectedProject)
          .get();

      // Assurez-vous qu'il y a au moins un projet correspondant
      if (projectsSnapshot.size > 0) {
        QueryDocumentSnapshot selectedProjectDoc = projectsSnapshot.docs.first;

        // Récupérez directement les données de la sous-collection "composants"
        QuerySnapshot componentsSnapshot =
            await selectedProjectDoc.reference.collection('composants').get();

        // Effacez les données précédentes
        componentNames.clear();
        componentCodes.clear();

        // Parcourez chaque document dans la sous-collection "composants"
        for (QueryDocumentSnapshot component in componentsSnapshot.docs) {
          // print('${component.id} => ${component.data()}');

          // Utilisez le champ 'NomComposant' ou le nom de votre champ approprié
          String componentName = component.get('NomComposant') as String;
          componentNames.add(componentName);

          String code = component.get('Code') as String;
          componentCodes[componentName] = formatCode(code);
        }

        setState(() {
          // Mettez à jour l'interface utilisateur avec les nouvelles données
        });
      } else {
        print('Aucun projet trouvé avec le nom: $selectedProject');
      }
    } catch (e) {
      print('Erreur lors du chargement des données depuis Firestore: $e');
    }
  }

  String formatCode(String code) {
    // Remplacez "\n" par un retour à la ligne
    return code.replaceAll(r"\n", "\n");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Container(
          height: 50,
          color: Color.fromARGB(255, 196, 192, 192),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                        color: const Color.fromARGB(255, 70, 63, 63)),
                    onPressed: () {
                      // Ajoutez ici la logique pour l'icône de la maison
                    },
                  ),
                  SizedBox(
                      width:
                          8), // Espacement entre l'icône et le premier bouton

                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le premier bouton
                    },
                    child: Text(
                      "Component Library",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Couleur du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius réduit
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12), // Ajustez le padding
                    ),
                  ),
                  SizedBox(width: 8), // Espacement entre les deux boutons
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le deuxième bouton
                    },
                    child: Text(
                      "Add Page",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(
                          255, 227, 226, 226), // Couleur du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Border radius réduit
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12), // Ajustez le padding
                    ),
                  ),
                ],
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: Text("Import Projet"),
                    value: "Import",
                  ),
                  PopupMenuItem(
                    child: Text("Backup Projet"),
                    value: "Backup",
                  ),
                  PopupMenuItem(
                    child: Text("Clear Projet"),
                    value: "Clear",
                  ),
                ],
                onSelected: (value) {
                  // Ajoutez ici la logique pour le menu déroulant
                  print("Selected: $value");
                },
                icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              ),
            ],
          ),
        ),
        // Liste de cartes de composants React JS
        Expanded(
          child: ListView.builder(
            itemCount: componentNames.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(componentNames[index]),
                onTap: () {
                  setState(() {
                    selectedCode = componentCodes[componentNames[index]] ?? "";
                  });
                },
              );
            },
          ),
        ),
        // Titre pour le code React JS sélectionné
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Text(
            "Le Code React JS",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        // Conteneur pour afficher le code React JS sélectionné
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity, // Largeur de 100%
              color: Colors.black,
              padding: EdgeInsets.all(16),
              child: Text(
                selectedCode,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        // Footer avec bouton "delete", "cancel" et "save"
        Container(
          height: 50,
          color: Color.fromARGB(255, 196, 192, 192),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  // Ajoutez ici la logique pour le bouton "delete"
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.delete_sweep_rounded, color: Colors.black),
                ),
                shape: CircleBorder(),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le bouton "save"
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Ajoutez ici la logique pour le bouton "save"
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
