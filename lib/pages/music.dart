import 'package:flutter/material.dart';
import 'package:music_app_assign/providersFolder/musicPro.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';

class Music extends StatelessWidget {
  Music({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 12.0, right: 10, left: 10),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Consumer<MusicPro>(
                  builder: (context, value, child) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 70,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 233, 147, 248),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Song ${index + 1}",
                              style: TextStyle(fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {
                                  value.play();
                                },
                                icon: Icon(Icons.play_arrow))
                          ],
                        )),
                  ),
                )),
      )),
    );
  }
}
