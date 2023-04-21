import 'dart:async';

import 'package:garasound_customer_apps/features/main_screen/presentation/ui/main_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    super.onInit();

    Timer(
      const Duration(
        seconds: 5,
      ),
          () async {
            Get.offAll(() => MainScreen());
          },
    );
  }
}