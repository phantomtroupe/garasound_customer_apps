import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';

class ContactPerson extends StatelessWidget {
  const ContactPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16.0,
      left: 16.0,
      right: 16.0,
      child: Column(
        children: [
          Text(
            "Ada masalah? Hubungi Kami :",
            style: AppTextStyles.poppinsBold(
              fontSize: 14,
              color: AppColors.labelPrimary,
            ),
          ),
          Text(
            "Website : https://garasound.com/",
            style: AppTextStyles.poppinsRegular(
              fontSize: 14,
              color: AppColors.labelPrimary,
            ),
          ),
          // Text(
          //   "Telepon : 081286476058",
          //   style: AppTextStyles.poppinsRegular(
          //     fontSize: 14,
          //     color: AppColors.labelPrimary,
          //   ),
          // ),
          Text(
            "Instagram : @garasound.id",
            style: AppTextStyles.poppinsRegular(
              fontSize: 14,
              color: AppColors.labelPrimary,
            ),
          ),
          Text(
            "Email : info@garasound.com",
            style: AppTextStyles.poppinsRegular(
              fontSize: 14,
              color: AppColors.labelPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
