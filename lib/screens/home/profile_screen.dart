import 'package:flutter/material.dart';
import 'package:food_delivery_apk/screens/Widgets/App_icon.dart';
import 'package:food_delivery_apk/screens/Widgets/account_widget.dart';
import 'package:food_delivery_apk/utils/AppRoutes.dart';

import '../../utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.mainColor,
        centerTitle: true,
        title: const Text("Profile", style: TextStyle(
             color: Styles.whiteColor
        ),),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        width: double.maxFinite,
        child: Column(
          children: [
            // Text('data'),
             AppIcon(icon: Icons.person,
             backgroundColor: Styles.mainColor,
              iconColor: Styles.whiteColor,
            size: 120,),
            const SizedBox(height: 30,),

            AccountWidget(appIcon: AppIcon(icon: Icons.person,
              backgroundColor: Styles.mainColor,
              iconColor: Styles.whiteColor), text:"Ahmed"),
            const SizedBox(height: 18),
            AccountWidget(appIcon: AppIcon(icon: Icons.phone_enabled,
                backgroundColor: Styles.yellowColor,
                iconColor: Styles.whiteColor), text:"1376189016"),
            const SizedBox(height: 18),
            AccountWidget(appIcon: AppIcon(icon: Icons.mail,
                backgroundColor: Styles.yellowColor,
                iconColor: Styles.whiteColor), text:"mjdazaa@yahoo.com"),
            // AccountWidget(appIcon: Icons.person, text:"Ahmed")
            const SizedBox(height: 18),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Approutes.addAddress);
              },
              child: AccountWidget(appIcon: AppIcon(icon: Icons.location_on,
                  backgroundColor: Styles.yellowColor,
                  iconColor: Styles.whiteColor), text:"Fill in your address"),
            ),
            const SizedBox(height: 18),
            AccountWidget(appIcon: AppIcon(icon: Icons.message,
                backgroundColor: Styles.redColor,
                iconColor: Styles.whiteColor), text:"None")
            // AccountWidget(appIcon: Icons.person, text:"Ahmed")
            // )
          ],
        ),
      ),
    );
  }
}
