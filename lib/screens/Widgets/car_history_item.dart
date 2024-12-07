import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import '../components/cart_history_item_image.dart';


class CartHistoryItem extends StatelessWidget {
  const CartHistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('02/05/2022 ',style: TextStyle(
                    fontSize: 22
                ),),
                Text('02:36 PM',style: TextStyle(
                    fontSize: 22
                ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      // Container(
                      //     height: 60,
                      //     width: 60,
                      //     child: Image.asset('/assets/images/food_image1.jpeg')),
                      CartHistoryImage(link: "assets/images/food_image1.jpeg"),
                      CartHistoryImage(link: "assets/images/food_image1.jpeg"),
                    ]
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Total'),
                    SizedBox(height: 10,),
                    Text('2 Items', style: TextStyle(
                        fontSize: 22
                    ),),
                    SizedBox(height: 5,),
                    Container(
                      padding: EdgeInsets.all(2),
                      child: Text('one more', style: TextStyle(
                        color: Styles.mainColor,
                      ),),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Styles.mainColor),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

