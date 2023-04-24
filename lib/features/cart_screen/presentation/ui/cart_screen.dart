import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/controller/cart_screen_controller.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/cart_item_list.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/cart_screen_app_bar.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/cart_summary.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);

  final controller = Get.put(
    CartScreenController(
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CartAppBar(),
        CartItemList(),
        CartSummary(),
      ],
    );
  }
}
