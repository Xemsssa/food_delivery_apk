import 'package:flutter/material.dart';
// import 'package:food_delivery_apk/home/home_screen.dart';
import 'package:food_delivery_apk/screens/bottom_bar.dart';
import 'package:food_delivery_apk/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Delivery App',
      // home: const BottomBar(),
      home: const HomeScreen(),
    );
  }
}