import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';


class bottomNavBarButton extends StatelessWidget {
  final String text;
  const bottomNavBarButton({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Styles.mainColor
        ),
        child: Text(text, style: TextStyle(
            color: Styles.whiteColor,
            fontSize: 20
        ))
    );
  }
}
