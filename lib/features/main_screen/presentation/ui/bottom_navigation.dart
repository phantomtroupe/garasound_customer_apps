import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/features/main_screen/presentation/controller/main_screen_controller.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);
  final MainScreenController controller = Get.put(
    MainScreenController(),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, -4), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
        child: GetBuilder<MainScreenController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    controller.moveToAnotherTab(0);
                  },
                  icon: Icon(
                    Icons.home_outlined,
                    color: controller.activeTabIndex == 0
                        ? AppColors.primary
                        : AppColors.primaryOpacity70,
                    size: controller.activeTabIndex == 0
                        ? 35
                        : 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.moveToAnotherTab(1);
                  },
                  icon: Icon(
                    Icons.search_outlined,
                    color:controller.activeTabIndex == 1
                        ? AppColors.primary
                        : AppColors.primaryOpacity70,
                    size: controller.activeTabIndex == 1
                        ? 35
                        : 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.moveToAnotherTab(2);
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: controller.activeTabIndex == 2
                        ? AppColors.primary
                        : AppColors.primaryOpacity70,
                    size: controller.activeTabIndex == 2
                        ? 35
                        : 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    controller.moveToAnotherTab(3);
                  },
                  icon: Icon(
                    Icons.person_outlined,
                    color: controller.activeTabIndex == 3
                        ? AppColors.primary
                        : AppColors.primaryOpacity70,
                    size: controller.activeTabIndex == 3
                        ? 35
                        : 30,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
