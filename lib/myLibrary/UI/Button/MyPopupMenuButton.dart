import 'package:flutter/material.dart';

class MyPopupMenuButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPopupMenuButtonState();
}

enum MenuType { first, second, third }

class _MyPopupMenuButtonState extends State<MyPopupMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuType>(onSelected: (MenuType result) {
      final snackBar = SnackBar(content: Text('$result is selected.'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }, itemBuilder: (BuildContext buildContext) {
      return [
        for (final value in MenuType.values)
          PopupMenuItem(
            value: value,
            child: Text(value.toString()),
          )
      ];
    });
  }
}
