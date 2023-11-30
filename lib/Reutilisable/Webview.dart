import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Navigateur Flutter'),
        ),
        body: Browser(),
      ),
    );
  }
}

class Browser extends StatefulWidget {
  @override
  _BrowserState createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  late WebViewController _webViewController;
  TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _urlController,
                decoration: InputDecoration(
                  hintText: 'Entrez l\'URL',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                loadUrl();
              },
            ),
          ],
        ),
        Expanded(
          child: WebViewWidget(
            initialUrl: 'https://www.google.com', // URL initial
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
            },
          ),
        ),
      ],
    );
  }

  void loadUrl() {
    String url = _urlController.text;
    if (url.isNotEmpty) {
      if (!url.startsWith('http://') && !url.startsWith('https://')) {
        url = 'http://$url'; // Ajoute le préfixe http:// s'il est manquant
      }
      _webViewController.loadUrl(url);
    }
  }
}
