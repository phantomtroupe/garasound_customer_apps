import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/core/cosmetics/buttons.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/controller/cart_screen_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartSummary extends StatelessWidget {
  const CartSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total",
                  style: AppTextStyles.poppinsRegular(
                    fontSize: 16,
                  ),
                ),
                GetBuilder<CartScreenController>(
                  builder: (controller) {
                    return Text(
                      NumberFormat.currency(locale: "id", symbol: "Rp. ")
                          .format(
                        // controller.totalPrice,
                        0,
                      ),
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 16,
                        color: AppColors.primary,
                      ),
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 8),
              child: ButtonPrimary(
                text: "Check Out",
                height: 40,
                onpressed: (){},
                width: (MediaQuery.of(context).size.width * 25 / 100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
