import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  _DropdownButtonState createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<MyDropdownButton> {
  final itemList = ['apple', 'banana', 'coconut'];
  String dropdownValue = 'apple';

  @override
  void initState() {
    super.initState();
    setState(() {
      dropdownValue = itemList[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropdownValue,
      icon: Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 8,
      style: TextStyle(color: Colors.blue),
      underline: Container(
        height: 2,
        color: Colors.cyan,
      ),
      items: itemList
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
          .toList(),
      onChanged: (value) {
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
