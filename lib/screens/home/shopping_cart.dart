import 'package:food_delivery_apk/utils/colors.dart';
import 'package:flutter/material.dart';

import '../Widgets/App_icon.dart';
import '../Widgets/shopping_cart_item.dart';
import '../components/bottom_nav_bar_botton.dart';
import '../components/count_item.dart';


class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            // width: double.maxFinite,
            padding: EdgeInsets.only(top: 45, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AppIcon(icon: Icons.arrow_back, iconColor: Styles.whiteColor,backgroundColor: Styles.mainColor, )),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal:20),
                //   child: Text('Cart history', style: Styles.headlineStyle2.copyWith(color: Styles.whiteColor),),
                // ),
                AppIcon(icon: Icons.shopping_cart, iconColor: Styles.whiteColor, backgroundColor: Styles.mainColor, )
              ],
            ),
          ),

          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                shoppingCartItem(size: size),
                shoppingCartItem(size: size),
                shoppingCartItem(size: size)
              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Styles.textColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))

            ),
            // height: 120,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Styles.whiteColor
                    ),
                    child: Text('\$14792',style: TextStyle(
                      fontSize: 18
                    ),)
                ),
                bottomNavBarButton(text: 'Check out')
              ],
            ),
          ),
        ],
      ),

    );
  }
}
