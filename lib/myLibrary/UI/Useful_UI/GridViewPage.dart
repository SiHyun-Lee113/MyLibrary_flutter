import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/Useful_UI/GridViewTile.dart';

class GridViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Test'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 50,
        children: <Widget>[
          GridViewTile(),
          GridViewTile(),
          GridViewTile(),
          GridViewTile(),
          GridViewTile(),
          GridViewTile(),

        ],
      ),
    );
  }
}
