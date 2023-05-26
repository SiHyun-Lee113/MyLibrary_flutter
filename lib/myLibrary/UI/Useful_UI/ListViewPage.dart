import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Listview sample'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ListView'),
            subtitle: Text('Using ListTile'),
            trailing: Icon(Icons.more_vert),
            onTap: () {},
          ),
          ListTile(
            leading: FlutterLogo(
              size: 50.0,
            ),
            title: Text('Flutter'),
            trailing: Icon(Icons.autorenew),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
              size: 50.0,
            ),
            title: Text('Contacts'),
            subtitle: Text('Add Phone Number'),
            trailing: Icon(Icons.add),
            onTap: () {},
          ),
          //TODO 리스트뷰에 들어갈 위젯을 커스텀하자 ex) android-recyclerView
          Container(
            height: 500,
            color: Colors.black12,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('data'),
                  Image.asset('assets/images/test1.png'),
                  Icon(Icons.ac_unit_outlined)
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            color: Colors.blue,
            child: Center(
              child: Text('BLUE'),
            ),
          )
        ],
      ),
    );
  }
}
