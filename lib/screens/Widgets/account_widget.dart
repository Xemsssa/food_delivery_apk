import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/Widgets/App_icon.dart';

import '../../utils/colors.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  String text = '';
  AccountWidget({super.key, required this.appIcon, required  this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Styles.whiteColor
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          appIcon,
          SizedBox(width: 20,),
          Text(text, style: TextStyle(
            fontSize: 22
          ),)
        ],
      ),
    );
  }
}