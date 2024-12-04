import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text("Bangladesh", style: TextStyle(
          color: Styles.mainColor,
          fontSize: 26,
          fontWeight: FontWeight.bold
      )
    );
  }
}
