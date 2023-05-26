import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/Navigation/BottomNavigation.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/GridViewPage.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/ImageSlider.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/ListViewPage.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/PageViewPage.dart';

class UI_Collection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          MaterialPageRoute(builder: (context) =>
                              MyImageSlider(
                                imageList: [
                                  "assets/images/test1.png",
                                  "assets/images/test2.png",
                                  "assets/images/test3.png",],
                              )));
                    },
                    child: Text('ImageSlider')
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListViewPage()));
                    },
                    child: Text('listView')
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GridViewPage()));
                    },
                    child: Text('gridView')
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageViewPage()));
                    },
                    child: Text('pageView')
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNavigation()));
                    },
                    child: Text('bottomNavi'))
              ],
            )
          ],
        ),
      );
  }

}