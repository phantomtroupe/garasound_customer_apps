import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/controller/cart_screen_controller.dart';
import 'package:garasound_customer_apps/features/cart_screen/presentation/ui/decoration.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: cartItemDecoration,
        child: Row(
          children: [
            GetBuilder<CartScreenController>(
              builder: (controller) {
                return Checkbox(
                  // value: cartModel.selected,
                  value: false,
                  onChanged: (value) {
                    // cartModel.selected = value!;
                    // controller.checkIfAllItemSelected();
                    // controller.calculateTotalPrice();
                  },
                );
              },
            ),
            Assets.lib.assets.images.musicIcon.image(
              width: 40,
              height: 40,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // "${cartModel.trackName}",
                      "",
                      style: AppTextStyles.poppinsBold(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      // "By ${cartModel.creatorUsername}",
                      "",
                      style: AppTextStyles.poppinsRegular(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                NumberFormat.currency(
                  locale: "id",
                  symbol: "Rp. ",
                // ).format(double.parse(cartModel.price!)),
                ).format(0),
                style: AppTextStyles.poppinsBold(
                  fontSize: 14,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
