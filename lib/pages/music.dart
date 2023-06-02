import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../constants/colors.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text('data')),
            ElevatedButton(onPressed: () {}, child: Text('data2')),
            ElevatedButton(onPressed: () {}, child: Text('data3')),
          ],
        ),
      ),
    );
  }
}
