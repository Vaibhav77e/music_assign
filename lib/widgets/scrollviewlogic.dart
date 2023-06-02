import 'package:flutter/material.dart';
import 'package:music_app_assign/widgets/scrollView.dart';

class ScrollPro extends StatefulWidget {
  @override
  State<ScrollPro> createState() => _ScrollProState();
}

class _ScrollProState extends State<ScrollPro> {
  List textValue = [
    ["Trending right now", true],
    ["Rock", false],
    ["Hip Hop", false],
    ["Electro", false],
    ["Engerise", false],
  ];

  void onSelectIndex(int index) {
    setState(() {
      textValue[index][1] = !textValue[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: textValue.length,
      itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: ScrollViewL(
              onTapFn: () => onSelectIndex(index),
              text: textValue[index][0],
              value: textValue[index][1])),
    );
  }
}
