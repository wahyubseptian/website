// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/config/style/colors.dart';
import 'package:landing_page_wahyubseptian/config/style/text_style.dart';
import 'dart:js' as js;

class GreetingsSection extends StatelessWidget {
  const GreetingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    AppColors appcolors = AppColors();
    AppTextStyle appTextStyle = AppTextStyle();
    return Container(
      decoration: BoxDecoration(color: appcolors.blackColor),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 16,
                vertical: 32),
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
                  "Welcome to My Personal Page, your Tech Solution",
                  style: appTextStyle.headings,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Hello, I'm Tinet, an Android App Developer. Here, you can explore some of the Android apps I've created. Feel free to browse through my projects and learn more about my skills and experience.",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod('open', ['https://wa.me/6281353877272']);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: appcolors.mainColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Contact Me',
                      style: appTextStyle.headings.copyWith(fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
