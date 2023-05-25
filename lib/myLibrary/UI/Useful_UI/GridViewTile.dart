import 'package:flutter/material.dart';

class GridViewTile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridViewTileState();
}

class _GridViewTileState extends State<GridViewTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Text('제목1')),
          Expanded(
            flex: 4,
            child: Image.asset('assets/images/test1.png'),
          ),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.star),
                  Text('3.5'),
                  Text('consulting company')
                ],
              )),
        ],
      ),
    );
  }
}
