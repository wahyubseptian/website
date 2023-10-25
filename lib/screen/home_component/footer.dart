import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/config/style/colors.dart';
import 'package:landing_page_wahyubseptian/config/style/text_style.dart';

Widget footer(BuildContext context) {
  AppTextStyle appTextStyle = AppTextStyle();
  return Container(
    alignment: Alignment.center,
    height: 40,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      border: Border.all(color: AppColors().blackColor),
    ),
    child: Text(
      'Wahyu Bagus Septian 2023',
      style: appTextStyle.content,
    ),
  );
}
