import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/UI/Button/MyCheckbox.dart';
import 'package:library_flutter/myLibrary/UI/Button/MyDropdownButton.dart';
import 'package:library_flutter/myLibrary/UI/Button/MyIconButton.dart';
import 'package:library_flutter/myLibrary/UI/Button/MyPopupMenuButton.dart';

class ButtonCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Collection',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Button Collection'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () {
                      print('ElevatedButton');
                    },
                    style: ElevatedButton.styleFrom(
                        // Todo 스타일 처리
                        ),
                    child: Text('ElevatedButton == FlatButton(이제 안씀)')),
                OutlinedButton(
                  onPressed: () {
                    print('OutlinedButton');
                  },
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(
                          color: Colors.lightBlue,
                          width: 2.0,
                          style: BorderStyle.solid)),
                  child: Text('OutlinedButton'),
                ),
                TextButton(
                  onPressed: () {
                    print('TextButton');
                  },
                  child: Text('TextButton'),
                ),
                FloatingActionButton(
                  onPressed: () {
                    print('FloatingActionButton 쳇봇이 들어갔으면 좋겠당');
                  },
                  child: Text("헤헤"),
                  backgroundColor: Colors.blue,
                ),
                MyDropdownButton(),
                MyPopupMenuButton(),
                MyIconButton(),
                MyCheckbox()
              ],
            ),
          )),
    );
  }
}
