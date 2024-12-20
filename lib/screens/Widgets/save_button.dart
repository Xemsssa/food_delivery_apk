import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class SaveButton extends StatelessWidget {
  final String text;
  const SaveButton({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        decoration: BoxDecoration(
            color: Styles.mainColor,
            borderRadius: BorderRadius.circular(40)
        ),
        child: Text(text, style: TextStyle(
            color: Styles.whiteColor,
            fontSize: 26
        ),
        )
    );
  }
}