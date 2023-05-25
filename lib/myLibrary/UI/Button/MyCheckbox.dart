import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  var _isChecked = false;
  var _forSwitch = false;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value!;
            });
          },
        ),
        Text('value = $_isChecked'),
        Switch(
          value: _forSwitch,
          onChanged: (value) {
            setState(() {
              _forSwitch = value!;
            });
          },
        ),
        Text('value = $_forSwitch')
      ],
    );
  }
}
