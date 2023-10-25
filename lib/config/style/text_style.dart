import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/config/style/colors.dart';

class AppTextStyle {
  AppColors appColors = AppColors();

  final TextStyle content = TextStyle(
    color: AppColors().mainColor,
  );

  final TextStyle headings = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
}
