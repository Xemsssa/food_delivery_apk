import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import '../components/params.dart';

class DeliveryPrameters extends StatelessWidget {
  const DeliveryPrameters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ParamsWidget(text: 'Normal', iconColor: Styles.yellowColor, icon: Icons.ac_unit_sharp),
        ParamsWidget(text: '1.7km', iconColor: Styles.mainColor, icon: Icons.location_on),
        ParamsWidget(text: '32min', iconColor: Styles.redColor, icon: Icons.watch_later_outlined,),

        // const Row(
        //   children: [
        //     Icon(Icons.location_on,
        //     color: Styles.mainColor,),SizedBox(width: 4,),Text(, style: TextStyle(
        //         color: Styles.textColor
        //     )),
        //   ],
        // ),
        // const Row(
        //   children: [
        //     Icon(Icons.watch_later_outlined,
        //       color: Styles.redColor,),SizedBox(width: 4,),Text(, style: TextStyle(
        //         color: Styles.textColor
        //     )),
        //   ],
        // )
      ],
    );
  }
}


