import 'package:flutter/material.dart';
import 'package:kiliwebsite/Reutilisable/Webview.dart';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';
import 'package:webview_flutter_web/webview_flutter_web.dart';

void main() {
  WebViewPlatform.instance = WebWebViewPlatform();
  runApp(const MaterialApp(home: Webview()));
}

class Webview extends StatefulWidget {
  const Webview();

  @override
  WebviewState createState() => WebviewState();
}

class WebviewState extends State<Webview> {
  final PlatformWebViewController _controller = PlatformWebViewController(
    const PlatformWebViewControllerCreationParams(),
  )..loadRequest(
      LoadRequestParams(
        uri: Uri.parse('https://bakeli-tech.euleukcommunication.sn/'),
      ),
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PlatformWebViewWidget(
        PlatformWebViewWidgetCreationParams(controller: _controller),
        
      ).build(context),
    );
  }
}

enum _MenuOptions {
  doPostRequest,
}

class _SampleMenu extends StatelessWidget {
  const _SampleMenu(this.controller);

  final PlatformWebViewController controller;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_MenuOptions>(
      onSelected: (_MenuOptions value) {
        switch (value) {
          case _MenuOptions.doPostRequest:
            _onDoPostRequest(controller);
            break;
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuItem<_MenuOptions>>[
        const PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.doPostRequest,
          child: Text('Post Request'),
        ),
      ],
    );
  }

  Future<void> _onDoPostRequest(PlatformWebViewController controller) async {
    final LoadRequestParams params = LoadRequestParams(
      uri: Uri.parse('https://bakeli-tech.euleukcommunication.sn/'),
      method: LoadRequestMethod.post,
      headers: const <String, String>{
        'foo': 'bar',
        'Content-Type': 'text/plain'
      },
      body: Uint8List.fromList('Test Body'.codeUnits),
    );
    await controller.loadRequest(params);
  }
}


class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
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
          child: Row(
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
              // PopupMenuButton<String>(
              //   onSelected: (value) {
              //     // Ajoutez ici la logique pour les options sélectionnées
              //     setState(() {
              //       selectedOption = value;
              //       isDropdownOpen = false;
              //     });
              //   },
              //   itemBuilder: (context) => [
              //     PopupMenuItem(
              //       child: Container(
              //         width: 150, // Largeur du menu déroulant
              //         child: Column(
              //           children: options.map((option) {
              //             return ListTile(
              //               title: Text(option),
              //               onTap: () {
              //                 // Gérer la sélection de l'option
              //                 setState(() {
              //                   selectedOption = option;
              //                   isDropdownOpen = false;
              //                 });
              //               },
              //             );
              //           }).toList(),
              //         ),
              //       ),
              //     ),
              //   ],
              //   icon: Icon(Icons.arrow_drop_down, color: Colors.black),
              // ),
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
  child: Webview(),
),

      ],
    );
  }
}
