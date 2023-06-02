import 'package:flutter/material.dart';
import '../constants/colors.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  String image;
  List<Color> colors;
  String text1;
  void Function()? onPressedFun;

  CustomListView({
    required this.image,
    required,
    required this.colors,
    required this.text1,
    required this.onPressedFun,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          SizedBox(
            height: 190,
            width: 270,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 70,
              width: 235,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: colors),
                  borderRadius: BorderRadius.circular(22)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          text1,
                          style: const TextStyle(
                              color: ConstColors.itColor, fontSize: 18),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.music_note,
                              size: 15,
                            ),
                            Text(
                              'Muse - Simulation Theory',
                              style: TextStyle(
                                  color: ConstColors.itColor, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                        child: IconButton(
                      onPressed: onPressedFun,
                      icon: onPressedFun != null
                          ? const Icon(
                              Icons.play_arrow,
                              size: 24,
                            )
                          : const Icon(
                              Icons.pause,
                              size: 24,
                            ),
                    )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
