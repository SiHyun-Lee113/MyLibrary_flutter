import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/SystemManagement/Notification_main.dart';
import 'package:library_flutter/myLibrary/UI/Button/ButtonCollection.dart';
import 'package:library_flutter/myLibrary/UI/Dialog/DialogCollection.dart';
import 'package:library_flutter/myLibrary/UI/TestWebView.dart';
import 'package:library_flutter/myLibrary/UI/TextField/TextCollection.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI//ImageSlider.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/ListViewPage.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/Useful_UI_Collection.dart';
import 'package:library_flutter/myLibrary/SystemManagement/Notification.dart';

import 'myLibrary/RestAPI/Get.dart';
import 'myLibrary/RestAPI/Post.dart';
import 'myLibrary/SystemManagement/Permission_Page.dart';

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

class _LibraryCollectionPage extends StatefulWidget {
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
                        MaterialPageRoute(
                            builder: (context) => TextCollection()));
                  },
                  child: Text('Text')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ButtonCollection()));
                  },
                  child: Text('Button')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DialogCollection()));
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
                  child: Text('WebView')
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            UI_Collection()
                        )
                    );
                  },
                  child: Text('Ui Collection')
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
                        MaterialPageRoute(builder: (context) =>
                            GetRequestTest()
                        )
                    );
                  },
                  child: Text('RestAPI(get) Test')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            PostRequestTest()
                        )
                    );
                  },
                  child: Text('RestAPI(post) Test')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            NotificationPage()
                        )
                    );
                  },
                  child: Text('알림')
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
                        MaterialPageRoute(builder: (context) =>
                            PermissionPage()
                        )
                    );
                  },
                  child: Text('권한'))
            ],
          )
        ],
      ),
    );
  }
}