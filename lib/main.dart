import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/Button/ButtonCollection.dart';
import 'package:library_flutter/myLibrary/Dialog/DialogCollection.dart';
import 'package:library_flutter/myLibrary/TestWebView.dart';
import 'package:library_flutter/myLibrary/TextField/TextCollection.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SiHyun\'s library',
      home: _LibraryCollectionPage(),
    );
  }
}

class _LibraryCollectionPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _LibraryCollectionPageState();
}

class _LibraryCollectionPageState extends State<_LibraryCollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('시현이의 라이브러리 모음~')),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TextCollection()));
                },
                child: Text('Text')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ButtonCollection()));
                  },
                  child: Text('Button')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DialogCollection()));
                  },
                  child: Text('Dialog')
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WebViewApp()));
                  },
                  child: Text('WebView(Youtube.com)')
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('')
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('')
              ),
            ],
          )
        ],
      ),
    );
  }
}