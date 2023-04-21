import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/splash_screen/presentation/controller/splash_screen_controller.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenController controller = Get.put(
    SplashScreenController(),
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Assets.lib.assets.images.garasoundLogo.image(
                width: MediaQuery.of(context).size.height / 3,
                height: MediaQuery.of(context).size.height / 3,
              ),
            ),
            const Expanded(
              flex: 1,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
