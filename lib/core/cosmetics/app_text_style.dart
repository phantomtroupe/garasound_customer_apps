import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/core/cosmetics/app_colors.dart';
import 'package:garasound_customer_apps/gen/fonts.gen.dart';

class AppTextStyles {
  const AppTextStyles._();

  static TextStyle poppinsRegular(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height, FontStyle? style}) =>
      TextStyle(
          fontStyle: style,
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle poppinsMedium(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle poppinsSemiBold(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle poppinsBold(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.poppins,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle creamRegular(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.cream,
          fontWeight: FontWeight.w400,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle creamMedium(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.cream,
          fontWeight: FontWeight.w500,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle creamSemiBold(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.cream,
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          color: color,
          height: height);

  static TextStyle creamBold(
      {double fontSize = 14, Color color = AppColors.labelPrimary, double? height}) =>
      TextStyle(
          fontFamily: FontFamily.cream,
          fontWeight: FontWeight.w700,
          fontSize: fontSize,
          color: color,
          height: height);
}
