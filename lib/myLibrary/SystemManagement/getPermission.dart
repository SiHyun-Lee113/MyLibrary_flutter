import 'package:permission_handler/permission_handler.dart';
import 'package:fluttertoast/fluttertoast.dart';

getPermission_Something() async {
  var status = await Permission.location.status;

  if (status.isGranted) {
    //TODO 권한이 있을 때
  }
  if (status.isDenied) {
    //TODO 권한이 없을 때
  }
  if (status.isPermanentlyDenied) {
    //TODO 권한이 영구적으로 거부되었을 때
  }
}

Future<void> getPermission_All() async {
  await Permission.contacts.request();
  await Permission.camera.request();
  await Permission.notification.request();
}

getPermission_Contacts() async {
  print('getPermission_Contacts');
  var status = await Permission.contacts.status;
  if (status.isGranted) {
    Fluttertoast.showToast(msg: '권한 있음');
  } else if (status.isDenied) {
    Fluttertoast.showToast(msg: '권한 없음');
    Permission.contacts.request();
    print('getPermission_Contacts request');
  }
}

getPermission_Notification() async {
  print('getPermission_Notification');
  var status = await Permission.notification.status;
  if (status.isGranted) {
    Fluttertoast.showToast(msg: '권한 있음');
  } else if (status.isDenied) {
    Fluttertoast.showToast(msg: '권한 없음');
    Permission.notification.request();
    print('getPermission_Notification request');
  }
}

getPermission_Camera() async {
  print('getPermission_Camera');
  var status = await Permission.camera.status;
  if (status.isGranted) {
    Fluttertoast.showToast(msg: '권한 있음');
  } else if (status.isDenied) {
    Fluttertoast.showToast(msg: '권한 없음');
    Permission.camera.request();
    print('getPermission_Camera request');
  }
}