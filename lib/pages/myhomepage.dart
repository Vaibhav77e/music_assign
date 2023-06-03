import 'package:flutter/material.dart';
import 'package:music_app_assign/providersFolder/musicPro.dart';
import 'package:music_app_assign/widgets/customListView.dart';
import 'package:music_app_assign/widgets/scrollviewlogic.dart';
import 'package:music_app_assign/widgets/songsUi.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(63, 59, 84, 1.0),
                          borderRadius: BorderRadius.circular(12)),
                      height: 60,
                      width: 60,
                      child: const Icon(
                        Icons.menu,
                        color: Colors.white54,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(63, 59, 84, 1),
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: IconButton(
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white54,
                                size: 28,
                              ),
                              onPressed: () {},
                            ),
                            hintText: "Search",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                const Text(
                  'Trending right now',
                  style: TextStyle(
                      //  fontFamily: 'Roboto',
                      color: ConstColors.itColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 28),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: 200,
                  child: Consumer<MusicPro>(
                    builder: (context, value, child) => ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomListView(
                          image: 'assets/images/darkside_Copy.png',
                          colors: const [
                            Color.fromARGB(255, 127, 40, 141),
                            Color.fromARGB(255, 43, 39, 134),
                          ],
                          text1: 'The Dark Side',
                          onPressedFun: () {
                            value.play();
                          },
                        ),
                        CustomListView(
                          image: 'assets/images/thought_contagion.png',
                          colors: const [
                            // ignore: prefer_const_constructors
                            Color.fromARGB(255, 126, 41, 143),
                            Color.fromARGB(255, 91, 19, 117),
                          ],
                          text1: 'Thought contagion',
                          onPressedFun: () {
                            value.play2();
                          },
                        ),
                        CustomListView(
                          image: 'assets/images/somethin_human.png',
                          colors: const [
                            Color.fromARGB(229, 234, 117, 75),
                            Color.fromARGB(255, 163, 42, 62),
                          ],
                          text1: 'Sometin Human',
                          onPressedFun: () {
                            value.play2();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(height: 40, child: ScrollPro()),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.375,
                  child: SongUi(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
