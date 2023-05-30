import 'package:flutter/material.dart';
import 'package:library_flutter/myLibrary/SystemManagement/getPermission.dart' as getPermission;
class Permission_Denied_Dialog extends StatelessWidget {

  final String permission_eng;
  final String permission_kr;

  Permission_Denied_Dialog({
    required this.permission_eng,
    required this.permission_kr
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('알림'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('$permission_kr권한이 거부되었습니다. 원활한 사용을 원하시면 설정에서 해당 권한을 직접 허용하실 수 있습니다.')
        ],
      ),
      actions: [
        TextButton(
            onPressed: () async {
              switch(permission_eng) {
                case 'camera':
                  await getPermission.getPermission_Camera();
                  break;
                case 'notification':
                  await getPermission.getPermission_Notification();
                  break;
                case 'contacts':
                  await getPermission.getPermission_Contacts();
                  break;
              }
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('설정')
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text('ok')
        )
      ],
    );
  }
}