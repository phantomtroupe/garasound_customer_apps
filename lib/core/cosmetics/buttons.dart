import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_button_styles.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_text_style.dart';

class ButtonPrimary extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback? onpressed;
  final String text;

  const ButtonPrimary(
      {Key? key,
      this.height = 0,
      this.width = double.infinity,
      this.onpressed,
      this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: AppButtonStyles.buttonPrimary(),
        onPressed: onpressed,
        child: Text(
          text,
          style: AppTextStyles.poppinsRegular(color: Colors.white),
        ),
      ),
    );
  }
}

class ButtonSecondary extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback? onpressed;
  final String text;

  const ButtonSecondary(
      {Key? key,
      this.height = 0,
      this.width = 0,
      this.onpressed,
      this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: AppButtonStyles.buttonSecondary(),
        onPressed: onpressed,
        child: Text(
          text,
          style: AppTextStyles.poppinsRegular(color: AppColors.primary),
        ),
      ),
    );
  }
}
