import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';

class AppButtonStyles {
  const AppButtonStyles._();

  static ButtonStyle buttonPrimary({
    Color color = AppColors.primary,
    double padding = 0,
    double radius = 18.0,
  }) =>
      TextButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
      );

  static ButtonStyle buttonSecondary({
    Color color = Colors.white,
    double padding = 0,
    double radius = 18.0,
    double borderWidth = 1.0,
    Color borderColor = AppColors.primary,
  }) =>
      TextButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.all(padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          side: BorderSide(
            width: borderWidth,
            color: borderColor,
          ),
        ),
      );
}
