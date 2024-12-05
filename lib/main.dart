import 'package:flutter/material.dart';
// import 'package:food_delivery_apk/home/home_screen.dart';
import 'package:food_delivery_apk/screens/bottom_bar.dart';
import 'package:food_delivery_apk/screens/home/food_detail_page.dart';
import 'package:food_delivery_apk/screens/home/home_screen.dart';
import 'package:food_delivery_apk/screens/home/recomended_food_detail.dart';

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
      // home: const HomeScreen(),
      // home: FoodDetailPage(),
      home: RecomendedFoodDetail(),
    );
  }
}