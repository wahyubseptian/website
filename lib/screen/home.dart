// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/config/style/colors.dart';
import 'package:landing_page_wahyubseptian/config/style/text_style.dart';
import 'package:landing_page_wahyubseptian/screen/home_component/footer.dart';
import 'package:landing_page_wahyubseptian/screen/home_component/greetings.dart';
// import 'package:landing_page_wahyubseptian/screen/tab_content/project.dart';
import 'package:landing_page_wahyubseptian/screen/tab_content/skill.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:js' as js;

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  List<String> tabList = ["skill", "project"];

  AppColors appcolors = AppColors();
  AppTextStyle appTextStyle = AppTextStyle();

  int? indexActive = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    // var widthScreen = size.width;
    // var heightScreen = size.height;
    return Scaffold(
      appBar: AppBar(
          primary: false,
          backgroundColor: appcolors.blackColor,
          title: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Wahyubseptian',
              style: appTextStyle.headings,
            ),
          ),
          actions: [
            appbarIcon(
              const FaIcon(FontAwesomeIcons.github),
              () {
                js.context
                    .callMethod('open', ['https://github.com/wahyubseptian']);
              },
            ),
            appbarIcon(const FaIcon(FontAwesomeIcons.twitter), () {
              js.context.callMethod('open', ['https://twitter.com/webemon']);
            }),
            appbarIcon(const FaIcon(FontAwesomeIcons.instagram), () {
              js.context.callMethod(
                  'open', ['https://www.instagram.com/wahyubseptian/']);
            }),
          ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: appcolors.blackColor),
        child: ListView(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
          children: [
            const GreetingsSection(),
            skillTab(context),
            const SizedBox(),
            footer(context),
          ],
        ),
      ),
    );
  }
}

IconButton appbarIcon(FaIcon icon, VoidCallback action) {
  return IconButton(icon: icon, onPressed: action);
}
