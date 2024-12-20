import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'App_icon.dart';

class AppBotton extends StatelessWidget {
  final IconData icon;
  AppBotton({
    super.key, required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12,vertical:6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Styles.whiteColor,
          ),
          child: AppIcon(icon: icon, backgroundColor: Styles.whiteColor,)),
    );
  }
}
