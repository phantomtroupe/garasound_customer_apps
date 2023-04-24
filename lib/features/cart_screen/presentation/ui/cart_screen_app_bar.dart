import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/controller/cart_screen_controller.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/decoration.dart';
import 'package:get/get.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBarDecoration,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            GetBuilder<CartScreenController>(
              builder: (controller) {
                return Checkbox(
                  // value: controller.allItemSelected,
                  value: false,
                  onChanged: (value) {
                    // controller.selectAllItem(value!);
                  },
                );
              },
            ),
            Expanded(
              child: Text(
                "Semua",
                style: AppTextStyles.poppinsRegular(
                  fontSize: 14,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                // controller.attemptDeleteItemFromCart();
              },
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
