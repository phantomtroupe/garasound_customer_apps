import 'package:internet_connection_checker/internet_connection_checker.dart';

class Connectivity{
  static Future<bool> isConnectedToInternet() async {
    bool isConnected = await InternetConnectionChecker().hasConnection;
    return isConnected;
  }
}