import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  AppIcon({super.key,
    required this.icon,
    this.backgroundColor = Styles.backgroundColor,
    this.iconColor = Styles.iconColor,
    this.size = 40
  });

//
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundColor,
      ),
      child:  Icon(icon, size: 40,),
    );
  }
}
