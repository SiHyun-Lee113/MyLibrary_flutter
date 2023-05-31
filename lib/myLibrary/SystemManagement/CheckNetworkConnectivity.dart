import 'package:connectivity/connectivity.dart';

Future<bool> checkNetwork() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult != ConnectivityResult.none;
}