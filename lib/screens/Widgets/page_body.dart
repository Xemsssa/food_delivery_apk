import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class PageBody extends StatefulWidget {
  const PageBody({super.key});

  @override
  State<PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
        return _buildPageItems(index);
      }),
     );
  }
  Widget _buildPageItems(int index){
    return Container(
      height: 220,
      width: 200,
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
    );
  }
}
