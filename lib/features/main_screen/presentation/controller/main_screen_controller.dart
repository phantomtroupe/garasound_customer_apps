import 'package:get/get.dart';

class MainScreenController extends GetxController{
  int activeTabIndex = 0;

  void moveToAnotherTab(int i) {
    activeTabIndex=i;
    update();
  }
}