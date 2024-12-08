import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';


class CountItem extends StatelessWidget {
  const CountItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('-', style: TextStyle(
            color: Styles.textColor,
            fontSize: 24
        )),
        SizedBox(width: 10,),
        Text("0",style: TextStyle(
            fontSize: 24
        )),
        SizedBox(width: 10,),
        Text('+', style: TextStyle(
            color: Styles.textColor,
            fontSize: 24
        )),
      ],
    );
  }
}
