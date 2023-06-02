import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({super.key});

  List<String> imageUrl = [
    'assets/gIcons/bright_images.png',
    'assets/gIcons/family_tour.png',
    'assets/gIcons/freeze.png',
    'assets/gIcons/glad.png',
    'assets/gIcons/millions.png',
    'assets/gIcons/success.png',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imageUrl[index],
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
