import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/Widgets/users_reviews.dart';

import 'delivery_parameters.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Chinese Side"),
        SizedBox(height: 10,),
        UsersReviews(),
        SizedBox(height: 10,),
        DeliveryPrameters()
      ],
    );
  }
}
