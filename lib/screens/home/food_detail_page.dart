import 'package:flutter/material.dart';
// import 'package:food_delivery_apk/screens/Widgets/app_icon.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import '../Widgets/App_icon.dart';
import '../Widgets/expanded_text_widget.dart';
import '../Widgets/product_detail.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  // width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/food_image1.jpeg'
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                )
            ),
             Positioned(
                top: 45,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: AppIcon(icon: Icons.arrow_back)),
                    Spacer(),
                    AppIcon(icon: Icons.shopping_cart)
                  ],
                )
            ),
            Positioned(
                left: 0,
                right: 0,
                // bottom: 20,
                // height: size.height * 0.99,
                top: 350,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: ProductDetail(),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                      ),
                      color: Styles.whiteColor
                  ),
                )
            ),

            Positioned(
                top: 480,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Introduce'),
                )
            ),
            // SizedBox(height: 30,),
            Positioned(
              width: size.width * 0.99,
                top: 500,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ExpandedTextWidget(text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo')
                )
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            color: Styles.textColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
            topRight: Radius.circular(20))
                
          ),
          height: 120,
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
                  child: const Row(
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
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Styles.mainColor
                  ),
                  child: const Text("\$0.08 Add to cart", style: TextStyle(
                    color: Styles.whiteColor,
                    fontSize: 20
                  )
                  ))

              ],
            ),

        )
    );
  }
}
