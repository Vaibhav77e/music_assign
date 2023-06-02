import 'package:flutter/material.dart';
import 'package:music_app_assign/constants/colors.dart';

class SongUi extends StatelessWidget {
  List requiredData = [
    [
      'assets/images/forget_me.png',
      "I'm Good(blue)",
      'David Guetta & Bebe Rexha',
      false
    ],
    [
      'assets/images/under_infl.png',
      'Under the Influence',
      'Chris Brown',
      false
    ],
    ['assets/images/im_good.png', 'Forget Me', 'Lewis Capaidi', false],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: requiredData.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 80,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 80,
                width: 85,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    requiredData[index][0],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.507,
                //width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      requiredData[index][1],
                      style: const TextStyle(
                          fontSize: 20, color: ConstColors.itColor),
                    ),
                    Text(
                      requiredData[index][2],
                      style:
                          const TextStyle(fontSize: 16, color: Colors.white54),
                    )
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: ConstColors.itColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
