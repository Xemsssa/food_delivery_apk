import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_apk/utils/AppRoutes.dart';

import '../../utils/colors.dart';
import '../Widgets/app_text_field.dart';
import '../Widgets/save_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Styles.whiteColor,
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 45),
          Container(
            child: const Center(
              child: CircleAvatar(
                // backgroundColor: Styles.whiteColor,
                radius: 80,
                backgroundImage: AssetImage("assets/images/images.png"),
              ),
            ),
          ),

           Container(
             width: double.maxFinite,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Text("Hello", style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold
                                 ),),
                 ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text("Sign into your account"),
                ),
               ],
             ),
           ),

          SizedBox(height: 40,),

          AppTextField(textEditingController: phoneController,hintText: "Phone" ,icon: Icons.phone_android, color: Styles.mainColor,),

          const SizedBox(height: 20,),

          AppTextField(textEditingController: passwordController,hintText: "Password" ,icon: Icons.password, color: Styles.mainColor,),

          const SizedBox(height: 20,),

          Container(
            width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Sign into your account", style: TextStyle(
                        color: Styles.textColor,
                      )
                        ,),
                    ],
                  ),
                ),
          ),

          SaveButton(text: "Sign in"),

          const SizedBox(height: 40,),

          Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    const Text('Don\'t have account? ', style: TextStyle(
                        color: Styles.textColor
                    ),),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, Approutes.singUp);
                        },
                        child: Text('Create', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                        ),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
