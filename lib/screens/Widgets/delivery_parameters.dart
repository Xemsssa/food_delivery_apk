import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class DeliveryPrameters extends StatelessWidget {
  const DeliveryPrameters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.ac_unit_sharp,
             color: Styles.yellowColor,),
            SizedBox(width: 4,)
            // ,Text('Normal', style: Styles.headlineStyle,),
            ,Text('Normal', style: TextStyle(
              color: Styles.textColor
            )),
          ],
        ),
        Row(
          children: [
            Icon(Icons.location_on,
            color: Styles.mainColor,),SizedBox(width: 4,),Text('1.7km', style: TextStyle(
                color: Styles.textColor
            )),
          ],
        ),
        Row(
          children: [
            Icon(Icons.watch_later_outlined, color: Styles.redColor,),SizedBox(width: 4,),Text('32min', style: TextStyle(
                color: Styles.textColor
            )),
          ],
        )
      ],
    );
  }
}
