import 'package:flutter/material.dart';

class ReusableBottomNav extends StatelessWidget {
  void Function()? onTapVal;
  Widget? child;
  ReusableBottomNav({required this.onTapVal, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapVal,
      child: Container(
        height: 26,
        child: child,
      ),
    );
  }
}
