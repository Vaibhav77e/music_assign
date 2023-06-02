import 'package:flutter/material.dart';
import 'package:music_app_assign/constants/colors.dart';

class SongUi extends StatelessWidget {
  String? image;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Container(
        height: 80,
        color: Colors.amber,
        child: Row(
          children: [
            Container(
              color: Colors.green,
              height: 80,
              width: 85,
              // child: ClipRRect(
              //   borderRadius: BorderRadius.circular(24),
              //   child: Image.asset(
              //     image,
              //     fit: BoxFit.cover,
              //   ),
              // ),
            ),
            Column(
              children: [
                Text(
                  'data',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'data',
                  style: TextStyle(fontSize: 20),
                )
              ],
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
    );
  }
}




// Row(
//           children: [
//             Container(
//               color: Colors.green,
//               height: 80,
//               width: 85,
//               // child: ClipRRect(
//               //   borderRadius: BorderRadius.circular(24),
//               //   child: Image.asset(
//               //     image,
//               //     fit: BoxFit.cover,
//               //   ),
//               // ),
//             ),
//             Column(
//               children: [
//                 Text(
//                   'data',
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 Text(
//                   'data',
//                   style: TextStyle(fontSize: 20),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),