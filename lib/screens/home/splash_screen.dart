import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_apk/helpers/dependence.dart';
import 'package:food_delivery_apk/utils/AppRoutes.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

 late Animation<double> animation;
 late AnimationController animationController;

 @override
  void initState() {
   super.initState();
   animationController = AnimationController(vsync: this, duration: const Duration(seconds: 2))..forward() ;
   // animationController = ani mationController.forward();
   animation = CurvedAnimation(parent: animationController, curve: Curves.linear);

   Timer(
     const Duration(seconds: 3),
       () => Navigator.pushNamed(context, Approutes.mainScreenPage)
   );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(child: Image.asset('assets/images/images.png',
            height: 120,
            width: 120,)),
          )
        ],
      ),
    );
  }
}
