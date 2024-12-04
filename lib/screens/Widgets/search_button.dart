import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: Styles.mainColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Icon(Icons.search,
        color: Styles.buttonBackgroundColor,
      ),
    );
  }
}
