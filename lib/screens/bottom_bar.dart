// import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import 'home/home_screen.dart';
// import 'package:test_app/screens/AllTickets.dart';
// import 'package:test_app/screens/profile_screen.dart';
// import 'package:test_app/screens/ticket_screen.dart';
// import 'package:test_app/screens/home_screen.dart';
// import 'package:test_app/screens/search_screen.dart';
// import 'package:test_app/utils/styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget> [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    // const SearchScreen(),
    // const Alltickets(),
    // const ProfileScreen()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // print('Tapped index is ${_selectedIndex}');
    // print(_selectedIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body:
      Center(
          child: _widgetOptions[0],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        onTap: onItemTapped,
        showSelectedLabels: false,
        elevation: 10,
        showUnselectedLabels: false,
        selectedItemColor: Styles.textColor,
        unselectedItemColor: const Color(0xff000000),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home",
          ),
         ],
      ),
    );
  }
}
