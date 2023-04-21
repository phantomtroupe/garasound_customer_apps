import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';
import 'package:garasound_customer_apps/features/purchase_history_screen/domain/model/purchase_history_model.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';
import 'package:intl/intl.dart';

class ItemPurchased extends StatelessWidget {
  PurchaseHistoryModel model;

  ItemPurchased({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.to(()=>DetailPurchasedScreen(header: model),);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 18, bottom: 12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      DateFormat("dd MMM yyyy").format(
                        DateTime.parse(
                          model.created_at.toString(),
                        ),
                      ),
                      style: AppTextStyles.poppinsSemiBold(
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Assets.lib.assets.images.icRightAlign.image(),
                ],
              ),
            ),
            const Divider(
              height: 3,
              color: Color(0xffE5E5E5),
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
              child: Row(
                children: [
                  // PrimaryCheckbox(
                  //   onCheckedChanged: (value) {},
                  // ),
                  // const SizedBox(
                  //   width: 12,
                  // ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Assets.lib.assets.images.musicIcon.image(fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.hightlight_track_name.toString(),
                          style: AppTextStyles.poppinsMedium(fontSize: 15),
                        ),
                        Text(
                          "by ${model.hightlight_creator_username.toString()}",
                          style: AppTextStyles.poppinsRegular(
                              fontSize: 10, color: AppColors.labelSecondary),
                        ),
                        Text(
                          "+ ${int.parse(model.order_count.toString()) - 1} Track Lainnya",
                          style: AppTextStyles.poppinsRegular(
                              fontSize: 8, color: AppColors.labelSecondary),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    model.payment_status.toString(),
                    style: AppTextStyles.poppinsSemiBold(
                        fontSize: 15, color: AppColors.green),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}