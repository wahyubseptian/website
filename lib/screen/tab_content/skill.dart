import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/config/style/colors.dart';
import 'package:landing_page_wahyubseptian/config/style/text_style.dart';

Widget skillTab(BuildContext context) {
  AppTextStyle appTextStyle = AppTextStyle();

  List<String> listSkill = [
    "Im an Android developer using Flutter framework",
    "Experienced since 2020, i've made apps about a freelancing, a health consultation and education",
    "Experienced on payment gateway(Xendit, Midtrans)",
    "State Management"
  ];
  return Container(
    margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 16, vertical: 16),
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.white.withOpacity(0.05),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills",
          style: appTextStyle.headings,
        ),
        const SizedBox(
          height: 16,
        ),
        ...listSkill.map((e) => listSkillContent(e))
      ],
    ),
  );
}

Widget listSkillContent(String content) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        Icons.check,
        size: 24,
        color: AppColors().mainColor,
      ),
      const SizedBox(
        width: 8,
      ),
      Flexible(
        child: Text(
          content,
          style: AppTextStyle().content,
        ),
      )
    ],
  );
}
