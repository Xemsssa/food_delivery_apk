import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/home/food_detail_page.dart';
import 'package:food_delivery_apk/screens/home/home_screen.dart';
import 'package:food_delivery_apk/screens/home/recommended_food_detail.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  int selectedIndex = 0;
  List pages = [
    HomeScreen(),
    FoodDetailPage(),
    RecommendedFoodDetail(),
    Container(child: Center(child: Text("next page4"),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Styles.mainColor,
        unselectedItemColor: Styles.yellowColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onChange,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "home"),
        ],
      ),
    );
  }
  void onChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }


}
