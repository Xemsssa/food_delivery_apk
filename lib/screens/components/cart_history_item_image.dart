import 'package:flutter/material.dart';

class CartHistoryImage extends StatelessWidget {
  final String link;
  const CartHistoryImage({
    super.key, required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(link)
              )),
        ),
      ),
    );
  }
}