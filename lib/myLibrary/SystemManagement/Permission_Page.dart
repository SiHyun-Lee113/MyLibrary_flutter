import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/SystemManagement/Permission_Denied_Dialog.dart';
import 'package:library_flutter/myLibrary/SystemManagement/getPermission.dart'
    as getPermission;
import 'package:permission_handler/permission_handler.dart';

class PermissionPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  @override
  void initState() {
    super.initState();

    getPermission.getPermission_All();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('시현이의 라이브러리 모음~')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    var status = await Permission.camera.status;
                    if (status.isDenied) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              Permission_Denied_Dialog(
                                permission_eng: 'camera',
                                permission_kr: '카메라',
                              ));
                    } else if (status.isGranted) {
                      getPermission.getPermission_Camera();
                    }
                  },
                  child: Text('카메라 권한')),
              ElevatedButton(
                  onPressed: () async {
                    var status = Permission.contacts.status;
                    if (await status.isDenied) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              Permission_Denied_Dialog(
                                permission_eng: 'contacts',
                                permission_kr: '연락처',
                              ));
                    }
                  },
                  child: Text('연락처 권한')),
              ElevatedButton(
                  onPressed: () async {
                    var status = Permission.notification.status;
                    if (await status.isDenied) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              Permission_Denied_Dialog(
                                permission_eng: 'notification',
                                permission_kr: '알람',
                              ));
                    }
                  },
                  child: Text('알람 권한')),
            ],
          ),
        ));
  }
}
