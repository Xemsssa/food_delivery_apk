import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class ParamsWidget extends StatelessWidget {
  String text;
  IconData icon;
  Color iconColor;
  ParamsWidget({
    super.key, required this.text, required this.icon,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,
          color: iconColor,),const SizedBox(width: 4,)
        // ,Text('Normal', style: Styles.headlineStyle,),
        // ,Text(text, style: Styles.headlineStyle3),
        ,Text(text, style: const TextStyle(
          color: Styles.textColor
        )),
      ],
    );
  }
}