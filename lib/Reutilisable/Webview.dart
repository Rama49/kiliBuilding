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