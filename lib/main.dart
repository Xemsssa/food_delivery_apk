import 'package:flutter/material.dart';
import 'package:food_delivery_apk/controllers/popular_product_controller.dart';
// import 'package:food_delivery_apk/home/home_screen.dart';
import 'package:food_delivery_apk/screens/bottom_bar.dart';
import 'package:food_delivery_apk/screens/home/food_detail_page.dart';
import 'package:food_delivery_apk/screens/home/home_screen.dart';
import 'package:food_delivery_apk/screens/home/recommended_food_detail.dart';
import 'package:food_delivery_apk/utils/AppRoutes.dart';

import "package:get/get.dart";
import 'helpers/dependence.dart' as dep;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return MaterialApp(
      title: 'Flutter Delivery App',
      // home: const BottomBar(),
      home: const HomeScreen(),
      // home: FoodDetailPage(),
      // home: RecomendedFoodDetail(),
      routes: {
        // '/food_detail_page': (context) => const FoodDetailPage(),
        Approutes.foodDetailPage: (context) => FoodDetailPage(),
        Approutes.recommendedFoodDetailPage: (context) => const RecommendedFoodDetail(),
      },
    );
  }
}