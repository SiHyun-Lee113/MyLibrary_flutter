import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/GridViewPage.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/ListViewPage.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      home: Scaffold(
        appBar: AppBar(
          title: Text('BottomNavigationBar'),
        ),
        body: getPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _curIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30,
                  color: _curIndex == 0 ? Colors.blue : Colors.black54,),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 30,
                  color: _curIndex == 1 ? Colors.blue : Colors.black54,),
                label: "Search"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 30,
                  color: _curIndex == 2 ? Colors.blue : Colors.black54,),
                label: "Settings"
            ),
          ],

        ),
      )
    );
  }
  Container page3() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Settings',
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
  Widget getPage() {
    Widget page = Text('default');
    switch (_curIndex) {
      case 0:
        page = ListViewPage();
        break;
      case 1:
        page = GridViewPage();
        break;
      case 2:
        page = page3();
        break;
    }
    return page;
  }

}