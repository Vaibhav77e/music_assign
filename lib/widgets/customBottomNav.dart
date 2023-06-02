import 'package:flutter/material.dart';
import '../providersFolder/resuableBottomNav.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Container(
          height: 68,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color.fromRGBO(63, 59, 84, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ReusableBottomNav(
                  onTapVal: () {}, imageUrl: 'assets/icons/homepage.png'),
              ReusableBottomNav(
                  onTapVal: () {}, imageUrl: 'assets/icons/search.png'),
              ReusableBottomNav(
                onTapVal: () {},
                imageUrl: 'assets/icons/musical_note.png',
              ),
              ReusableBottomNav(
                onTapVal: () {},
                imageUrl: 'assets/icons/user.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
