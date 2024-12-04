import 'package:flutter/material.dart';

import '../Widgets/heading_text.dart';
import '../Widgets/page_body.dart';
import '../Widgets/search_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: const [
          // Text('homeScreen'),
          Padding(
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
          
          Padding(
            padding: EdgeInsets.all(20),
            child: PageBody(),
          )
        ],
      ),
    );
  }
}