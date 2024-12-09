import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/Widgets/App_icon.dart';
import 'package:food_delivery_apk/utils/AppRoutes.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import '../Widgets/car_history_item.dart';


class CartHistory extends StatelessWidget {
  const CartHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Cart History'),
      // ),
      body: Column(
        children : [
          Container(
            // width: double.maxFinite,
            color: Styles.mainColor,
            padding: EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Text('Cart history', style: Styles.headlineStyle2.copyWith(color: Styles.whiteColor),),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Approutes.shoppingCart);
                    },
                    child: AppIcon(icon: Icons.shopping_cart))
              ],
            ),
          ),

          CartHistoryItem(),
          CartHistoryItem(),
          CartHistoryItem(),

        ],
      ),
    );
  }
}

