import 'package:flutter/material.dart';

class ReusableBottomNav extends StatelessWidget {
  void Function()? onTapVal;
  String imageUrl;
  ReusableBottomNav({required this.onTapVal, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapVal,
      child: Container(
        height: 26,
        child: Image.asset(
          imageUrl,
          color: Colors.white,
        ),
      ),
    );
  }
}
