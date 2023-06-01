import 'package:flutter/material.dart';
import '../constants/colors.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  String image;
  List<Color> colors;
  String text1;
  String text2;

  CustomListView(
      {required this.image,
      required,
      required this.colors,
      required this.text1,
      required this.text2});

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
                'assets/images/darkside_Copy.png',
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
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 140, 43, 172),
                    Color.fromARGB(255, 43, 39, 134),
                  ]),
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
                          'The Dark Side',
                          style: TextStyle(
                              color: ConstColors.itColor, fontSize: 18),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.music_note,
                              size: 15,
                            ),
                            Text(
                              'Music - Simulation Theory',
                              style: TextStyle(
                                  color: ConstColors.itColor, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            size: 24,
                          )),
                    ),
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
