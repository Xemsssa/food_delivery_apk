import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/Widgets/users_reviews.dart';
import 'package:food_delivery_apk/utils/colors.dart';

import 'delivery_parameters.dart';

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      // width: 200,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
        return _buildPageItems(index);
      }),
     );
  }
  Widget _buildPageItems(int index){
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: 240,
          // width: 200,
          margin: const EdgeInsets.only(left: 5,right: 5),
          decoration: BoxDecoration(
              color: index.isEven ? Styles.yellowColor: Styles.mainColor,
              borderRadius: BorderRadius.circular(40),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/food_image1.jpeg',
                  )
              )
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 130,
            width: size.width * 0.75,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.whiteColor,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chinese Side"),
                SizedBox(height: 10,),
                UsersReviews(),
                SizedBox(height: 10,),
                DeliveryPrameters()
              ],
            ),
          ),
        )
      ],
    );
  }
}
