import 'package:flutter/material.dart';

class DialogCollection extends StatelessWidget {
  late bool alertDialogResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Collection',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Dialog Collection'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: Text('SimpleDialog'),
                            children: <Widget>[Text('심플 심플')],
                          );
                        });
                  },
                  child: Text('SimpleDialog'),
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('AlertDialog'),
                              content: Text('오예'),
                              actions: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                      alertDialogResult = true;
                                      Navigator.of((context)).pop();
                                    },
                                    child: Text('ok')),
                                ElevatedButton(
                                    onPressed: () {
                                      alertDialogResult = false;
                                      Navigator.of((context)).pop();
                                    },
                                    child: Text('cancle'))
                              ],
                            );
                          });
                    },
                    child: Text('AlertDialog')),
              ],
            ),
          )),
    );
  }
}
