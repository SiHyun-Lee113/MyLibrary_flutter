import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  WebViewController? _webViewController;

  void initState() {
    _webViewController = WebViewController()
      ..loadRequest(Uri.parse('https://flutter.dev'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WebView With In App WebView')),
      body: WebViewWidget(controller: _webViewController!),
    );
  }
}