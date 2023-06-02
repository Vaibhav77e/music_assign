import 'package:flutter/material.dart';
import 'package:music_app_assign/widgets/customGrid.dart';

import '../constants/colors.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstColors.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
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
                          Icons.arrow_back_ios,
                          color: Colors.white54,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(63, 59, 84, 1.0),
                            borderRadius: BorderRadius.circular(12)),
                        height: 60,
                        width: 60,
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  const Text(
                    'Recent favourites',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      // color: Colors.green,
                      child: CustomGrid())
                ],
              ),
            ),
          ),
        ));
  }
}
