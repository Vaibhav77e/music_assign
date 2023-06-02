import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: Center(child: Text('Profile')),
    );
  }
}
