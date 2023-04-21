import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/presentation/ui/puchase_history_screen.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:get/get.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.8),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding:
        const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
        child: Row(
          children: [
            Assets.lib.assets.images.garasoundLogo.image(width: 30, height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Garasound",
                  style: AppTextStyles.creamRegular(
                    fontSize: 16,
                    color: AppColors.primary,
                  )),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {
                    Get.to(
                          () => PurchaseHistoryScreen(),
                    );
                  },
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: AppColors.primary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
