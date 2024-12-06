import 'package:flutter/material.dart';

class ExpandedTextWidget extends StatefulWidget {
  String text;

  ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;


  // String text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum vitae odio sit amet orci dictum molestie sit amet vel augue. Fusce posuere accumsan ante, id placerat turpis blandit vel. Donec a lacus non nulla ornare hendrerit sed et justo. Curabitur hendrerit vitae odio nec faucibus. Donec sagittis urna a diam finibus, tincidunt facilisis orci efficitur. Ut arcu enim, ornare ut aliquam ut, venenatis ac nulla. Maecenas ac magna sapien. Quisque molestie nunc purus, ac imperdiet ligula pellentesque ac. Vestibulum massa tortor, pulvinar id enim et, bibendum rutrum magna. Donec cursus convallis justo";

  @override
  Widget build(BuildContext context) {
    // String text;
    var textWidget = Text(widget.text,
      maxLines: isExpanded? null: 10,
      overflow: isExpanded ? TextOverflow.visible: TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            // print("tap");
            changeVisibility();
          },
          child: Text(isExpanded ? 'Show less': 'Shows more' ),
        )
      ],
    );
  }
  void changeVisibility() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }
}
