import 'package:flutter/material.dart';

import '../../utils/colors.dart';
class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  final Color color;
  const AppTextField({super.key, required this.textEditingController, required this.hintText, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Styles.whiteColor,
        boxShadow:[
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 7,
            offset: Offset(1,10),
            color: Colors.grey.withOpacity(0.2)
          )
        ]
      ) ,
        child: TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText,
              prefix: Icon(icon, color: color),
              focusedBorder: OutlineInputBorder(
                borderRadius:BorderRadius.circular(20),
                borderSide: BorderSide(
                  width: 1.0,
                  color: Styles.whiteColor
                ),
              ),
                enabledBorder: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1.0,
                        color: Styles.whiteColor
                    ),
                ),
              border: OutlineInputBorder(
               borderRadius:BorderRadius.circular(20),
              )
          ),
        )
    );
  }
}