import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.add_box),
          iconSize: 30.0,
          color: Colors.lightBlue,
          tooltip: 'Add 1',
          onPressed: () {
            setState(() {
              _number += 1;
            });
          },
        ),
        Text('Number : $_number')
      ],
    );
  }
}
