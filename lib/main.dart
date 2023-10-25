import 'package:flutter/material.dart';
import 'package:landing_page_wahyubseptian/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Landing Page',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const HomeApp());
  }
}
