import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../Widgets/app_text_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      backgroundColor: Styles.whiteColor,
      body: Column(
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

          AppTextField(textEditingController: emailController,hintText: "Email" ,icon: Icons.email, color: Styles.yellowColor,),
          const SizedBox(height: 20,),
          AppTextField(textEditingController: passwordController,hintText: "Password" ,icon: Icons.password, color: Styles.yellowColor,),
          const SizedBox(height: 20,),
          AppTextField(textEditingController: nameController,hintText: "Name" ,icon: Icons.person, color: Styles.yellowColor,),
          const SizedBox(height: 20,),
          AppTextField(textEditingController: phoneController,hintText: "Phone" ,icon: Icons.phone, color: Styles.yellowColor,),
          const SizedBox(height: 40,),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              decoration: BoxDecoration(
                color: Styles.mainColor,
                borderRadius: BorderRadius.circular(40)
              ),
              child: const Text('Sign Up', style: TextStyle(
                color: Styles.whiteColor,
                fontSize: 26
              ),
              )
          ),
          const SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              // Navigator.pushNamed(context, routeName);
            },
            child: const Text("Have an account?", style: TextStyle(
              color: Styles.textColor,
              fontSize: 18
            ),),
          ),
          const SizedBox(height: 30,),
          const Text('Sign up using one of the folllowing methods', style: TextStyle(
            color: Styles.textColor
          ),),
          Wrap(
            children: List.generate(3, (generator) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/images.png'),
              ),
            )),
          )
        ],
      ),
    );
  }
}
