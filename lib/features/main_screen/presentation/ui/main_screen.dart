import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/cart_screen.dart';
import 'package:garasound_customer_apps/features/home_screen/presentation/ui/home_screen.dart';
import 'package:garasound_customer_apps/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:garasound_customer_apps/features/main_screen/presentation/ui/bottom_navigation.dart';
import 'package:garasound_customer_apps/features/profile_screen/presentation/ui/profile_screen.dart';
import 'package:garasound_customer_apps/features/search_screen/presentation/ui/search_screen.dart';
import 'package:get/get.dart';
import 'package:garasound_customer_apps/injector.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final MainScreenController controller = Get.put(
    MainScreenController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: GetBuilder<MainScreenController>(
                builder: (controller) {
                  if (controller.activeTabIndex == 0) {
                    return Center(
                      child: HomeScreen(),
                    );
                  } else if (controller.activeTabIndex == 1) {
                    return const Center(
                      child: SearchScreen(),
                    );
                  } else if (controller.activeTabIndex == 2) {
                    return const Center(
                      child: CartScreen(),
                    );
                  }else if (controller.activeTabIndex == 3) {
                    return const ProfileScreen();
                  }else{
                    return Container();
                  }
                },
              ),
            ),
            BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
