import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/colors.dart';

class UsersReviews extends StatelessWidget {
  const UsersReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
        children: [
          Row(
              children: [
                Icon(Icons.star,
                  color: Styles.mainColor,
                ),Icon(Icons.star,
                  color: Styles.mainColor,
                ),Icon(Icons.star,
                  color: Styles.mainColor,
                ),Icon(Icons.star,
                  color: Styles.mainColor,
                ),Icon(Icons.star,
                  color: Styles.mainColor,
                ),
              ]
          ),
          SizedBox(width: 10,),
          Text("4.5", style: TextStyle(
              color: Styles.textColor
          )),
          SizedBox(width: 10,),
          Text("1287 comments", style:  TextStyle(
              color: Styles.textColor
          )),
        ]
    );
  }
}
