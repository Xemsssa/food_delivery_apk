import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../components/count_item.dart';

class shoppingCartItem extends StatelessWidget {
  const shoppingCartItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/food_image1.jpeg'
                  )
              )
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          width: size.width * 0.65,                      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hilsha fish', style: TextStyle(
              fontSize: 22,
            ),),
            Text('Spicy',style: TextStyle(
                color: Styles.textColor,
                fontSize: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$ 12', style: TextStyle(
                    fontSize: 20
                ),),
                Row(children: [
                  CountItem()
                ],)
              ],
            )
          ],
        ),
        ),
      ],
    );
  }
}
