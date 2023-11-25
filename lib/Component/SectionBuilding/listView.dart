import 'package:flutter/material.dart';

class MyPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListWithSourceCode(),
        // Ajoutez d'autres widgets ici si nécessaire
      ],
    );
  }
}

class ListWithSourceCode extends StatefulWidget {
  const ListWithSourceCode({Key? key}) : super(key: key);

  @override
  _ListWithSourceCodeState createState() => _ListWithSourceCodeState();
}

class _ListWithSourceCodeState extends State<ListWithSourceCode> {
  bool showSourceCode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                showSourceCode = !showSourceCode;
              });
            },
            child: Text('Afficher le code source'),
          ),
          Visibility(
            visible: showSourceCode,
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: SingleChildScrollView(
                child: Text(
                  '''
                  // Votre code source ici
                  import 'package:flutter/material.dart';

                  class ListWithSourceCode extends StatefulWidget {
                    const ListWithSourceCode({Key? key}) : super(key: key);

                    @override
                    _ListWithSourceCodeState createState() => _ListWithSourceCodeState();
                  }

                  class _ListWithSourceCodeState extends State<ListWithSourceCode> {
                    bool showSourceCode = false;

                    @override
                    Widget build(BuildContext context) {
                      return Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  showSourceCode = !showSourceCode;
                                });
                              },
                              child: Text('Afficher le code source'),
                            ),
                            Visibility(
                              visible: showSourceCode,
                              child: Container(
                                margin: EdgeInsets.all(16.0),
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: SingleChildScrollView(
                                  child: Text(
                                    'Le code source de votre composant Flutter sera affiché ici.',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }
                  ''',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MyPageContent(),
  ));
}
