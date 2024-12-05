// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:dots_indicator/dots_indicator.dart';
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
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0;

  void initState() {
    super.initState();
    pageController.addListener((){
      setState(() {
        // _currentPageValue = pageController.page!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 380,
          // width: 200,
          child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
            return _buildPageItems(index);
          }),
         ),
        // new DotsIndicator(
        //   dotsCount: 5,
        //   position: _currentPageValue,
        //   decorator: DotsDecorator(
        //   size: const Size.square(9.0),
        //   activeSize: const Size(18.0, 9.0),
        //   activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        //   ),
        // )
      ],
    );
  }
  Widget _buildPageItems(int index){
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Container(
            height: 250,
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
              margin: const EdgeInsets.only(bottom: 0),
              height: 130,
              width: size.width * 0.75,
              padding: const EdgeInsets.all(20),
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
          ),
        ],
      ),
    );
  }
}
