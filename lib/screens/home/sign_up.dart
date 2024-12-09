import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/signup_body_model.dart';
import '../../utils/colors.dart';
import '../Widgets/app_text_field.dart';
import '../components/custom_snack_bar.dart';

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
          GestureDetector(
            onTap: (){
              _registration();
            },
            child: Container(
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

  void _registration() {
      // String name = nameController.text.trim();
      // String phone = phoneController.text.trim();
      // String email = emailController.text.trim();
      // String password = passwordController.text.trim();
      //
      // if(name.isEmpty) {
      //   customSnackBar('Type your name', title: 'Name');
      // }else if(phone.isEmpty){
      //   customSnackBar('Type your phone number', title: 'phone number');
      // }else if(email.isEmpty) {
      //   customSnackBar('Type your email', title: 'Email');
      // } else if(!GetUtils.isEmail(email)){
      //   customSnackBar('Type your valid email', title: 'Email');
      // }else if(password.isEmpty) {
      //   customSnackBar('Type your password', title: 'Password');
      // } else if(password.length<6){
      //   customSnackBar('Type longer password', title: 'Password');
      // } else {
      //   customSnackBar('Perfect, all well done', title: 'Perfect',);
      //   SignUpBody signUpBody = SignUpBody(name: name, email: email, phone:phone, password:password);
      //   print(signUpBody.toString());
      // }
  }


}
