import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_apk/screens/Widgets/delivery_parameters.dart';

import '../Widgets/heading_text.dart';
import '../Widgets/page_body.dart';
import '../Widgets/search_button.dart';

import 'package:food_delivery_apk/utils/colors.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      backgroundColor: Styles.buttonBackgroundColor,
      body: ListView(
        children: [
          // Text('homeScreen'),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("Bangladesh", style: Styles.headlineStyle)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     HeadingText(),
                      Row(
                        children: [
                          Text('data'),
                          Icon(Icons.arrow_drop_down),
                        ],
                      )
                    ],
                  ),
                  SearchButton()
              ]
            ),
          ),
          
          const PageBody(),
          
          const Padding(padding:EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Popular", style: TextStyle(
                  fontSize: 24
                ) ),
                SizedBox(width: 30,),
                Text("Food pairing", style: TextStyle(
                  color: Styles.textColor
                ),)
              ],
            ),
          ),

          Padding(padding: const EdgeInsets.all(15),
            child: Container(
              height: 700,
              // width: size.width * 0.99,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          // child: Text('data'),
                          decoration: BoxDecoration(
                            color: Styles.yellowColor,
                            borderRadius: BorderRadius.circular(20),
                            // image: DecorationImage(
                            //     image: AssetImage('assets/images/img.jpeg')
                            // ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.57,
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                              color: Styles.whiteColor,
                            borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Nutritious fruit meal', style: TextStyle(
                              )),
                              SizedBox(height: 10,),
                              Text('With chinese characteristics', style: TextStyle(
                                  color: Styles.textColor
                              ),),
                              SizedBox(height: 10,),
                              DeliveryPrameters()
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}