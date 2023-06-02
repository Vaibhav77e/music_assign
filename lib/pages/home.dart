import 'package:flutter/material.dart';
import 'package:music_app_assign/pages/profile.dart';
import 'package:provider/provider.dart';
import '../constants/colors.dart';
import 'myhomepage.dart';
import '../pages/music.dart';
import '../pages/search.dart';
import '../providersFolder/pagecontrol.dart';
import '../providersFolder/resuableBottomNav.dart';

class Home extends StatelessWidget {
  Home({super.key});

  List<Widget> pageList = const [
    MyHomePage(),
    Search(),
    Music(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<PageControl>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: ConstColors.backgroundColor,
              body: pageList[value.pageIndex],
              bottomNavigationBar: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Container(
                    height: 68,
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromRGBO(63, 59, 84, 1),
                    ),
                    child: Consumer<PageControl>(
                      builder: (
                        context,
                        val,
                        child,
                      ) =>
                          Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ReusableBottomNav(
                            onTapVal: () {
                              value.pageIndex = 0;
                            },
                            child: Image.asset(
                              'assets/icons/homepage.png',
                              color: value.pageIndex == 0
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          ReusableBottomNav(
                            onTapVal: () {
                              value.pageIndex = 1;
                            },
                            child: Image.asset(
                              'assets/icons/search.png',
                              color: value.pageIndex == 1
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          ReusableBottomNav(
                            onTapVal: () {
                              value.pageIndex = 2;
                            },
                            child: Image.asset(
                              'assets/icons/musical_note.png',
                              color: value.pageIndex == 2
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                          ReusableBottomNav(
                            onTapVal: () {
                              value.pageIndex = 3;
                            },
                            child: Image.asset(
                              'assets/icons/user.png',
                              color: value.pageIndex == 3
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ));
  }
}
