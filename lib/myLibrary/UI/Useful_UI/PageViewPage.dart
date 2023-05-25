import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/GridViewPage.dart';

import 'ListViewPage.dart';

class PageViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  final controller = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageView',
      home: Scaffold(
        appBar: new AppBar(
          title: const Text('Pageview Test'),
        ),
        body: PageView(
          controller: controller,
          children: <Widget>[
            GridViewPage(),
            ListViewPage()
          ],
        ),
      ),
    );
  }
}