import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/WebView4.dart';
import 'package:kiliwebsite/Reutilisable/WebView5.dart';
import 'package:kiliwebsite/Reutilisable/Webview1.dart';

class CustomImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: 
      Webview5()
      
    );
  }

}

class MyList5 extends StatefulWidget{
  @override
  _MyList5State createState() => _MyList5State();
}

class _MyList5State extends State<MyList5> {
  String selectedOption = "Home";
  TextEditingController searchController = TextEditingController();
  List<String> options = ["Home", "Contact", "Galerie", "Nos activtes"];
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Header
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                color: Colors.black, // Ajustez la couleur selon vos besoins
                width: 1.0,
              ),
            ),
          ),
          child: 
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300, // Augmentez la largeur du champ de recherche
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Couleur du fond
                      border: Border.all(
                        color: Colors.black, // Couleur des bordures
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        return options
                            .where((String option) => option
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()))
                            .toList();
                      },
                      onSelected: (String value) {
                        setState(() {
                          selectedOption = value;
                        });
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController fieldTextEditingController,
                          FocusNode fieldFocusNode,
                          VoidCallback onFieldSubmitted) {
                        return TextField(
                          controller: fieldTextEditingController,
                          focusNode: fieldFocusNode,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          style: TextStyle(color: Colors.black),
                          onChanged: (String value) {
                            onFieldSubmitted();
                          },
                        );
                      },
                      optionsViewBuilder: (BuildContext context,
                          AutocompleteOnSelected<String> onSelected,
                          Iterable<String> options) {
                        return Align(
                          alignment: Alignment.topLeft,
                          child: Material(
                            color: Colors.white,
                            elevation: 4.0,
                            child: SizedBox(
                              height: 200.0,
                              child: ListView.builder(
                                itemCount: options.length,
                                itemBuilder: (BuildContext context, int index) {
                                  final String option = options.elementAt(index);
                                  return GestureDetector(
                                    onTap: () {
                                      onSelected(option);
                                    },
                                    child: ListTile(
                                      title: Text(option),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              
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
  child: Webview5(),
),

      ],
    );
  }
}
