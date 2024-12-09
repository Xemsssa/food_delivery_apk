import 'package:food_delivery_apk/screens/Widgets/app_icon.dart';
import 'package:food_delivery_apk/screens/Widgets/expanded_text_widget.dart';
import 'package:food_delivery_apk/utils/colors.dart';
import 'package:flutter/material.dart';


class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: AppIcon(icon: Icons.arrow_back,)),
                // Spacer(),
                GestureDetector(
                    onTap: () {

                    },
                    child: AppIcon(icon: Icons.shopping_cart,))
                // Icon()
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(60), child: Container(
              padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                  color: Styles.yellowColor
                ),
                width: double.maxFinite,
                child: Center(child: Text('test', style: TextStyle(
                  fontSize: 24
                ),),)),
            ),
            pinned: true,
            backgroundColor: Styles.mainColor,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('assets/images/food_image1.jpeg',
              fit: BoxFit.cover,
              width: double.maxFinite,),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ExpandedTextWidget(text:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo'),
              )
              ),
          ],
          ),
          ),

        ],
      ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        child: AppIcon(
                          size: 16,
                          icon: Icons.remove,
                          iconColor: Styles.whiteColor,
                          backgroundColor: Styles.mainColor,
                        )
                    ),
                    Text('\$12.88 X 0', style: TextStyle(
                      fontSize: 24
                    ),),
                    Container(
                      child: AppIcon(icon: Icons.add,
                        iconColor: Styles.whiteColor,
                        backgroundColor: Styles.mainColor,)
                    )
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: Styles.textColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))

                ),
                // height: 120,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Styles.whiteColor
                      ),
                      child: AppIcon(icon: Icons.favorite,iconColor: Styles.mainColor,)
                    ),
                    Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Styles.mainColor
                        ),
                        child: const Text("\$0.08 Add to cart", style: TextStyle(
                            color: Styles.whiteColor,
                            fontSize: 20
                        ))
                    )
                  ],
                ),
              ),
            ],
          ),

    );
  }
}
