import 'package:flutter/material.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class ScrollViewL extends StatelessWidget {
  // var selectedValue = false;
  void Function()? onTapFn;
  bool? value;
  String text;

  ScrollViewL({required this.onTapFn, required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFn,
      child: Container(
        alignment: Alignment.center,
        height: 40,
        // width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: value!
                ? const Color.fromARGB(255, 103, 58, 183)
                : Colors.transparent),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            text,
            style: const TextStyle(color: ConstColors.itColor, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

//  GestureDetector(
//           onTap: () => onTapFn,
//           child: Container(
//             alignment: Alignment.center,
//             height: 40,
//             width: 140,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: selectedValue
//                     ? Color.fromARGB(255, 103, 58, 183)
//                     : Colors.transparent),
//             child: Text(
//               newVal.textValue[index][0],
//               style: const TextStyle(color: ConstColors.itColor),
//             ),
//           ),
//         ),




// ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.transparent,
//           ),
//           onPressed: () => selectedValue,
//           child: Text(
//             newVal.textValue[index][0],
//             style: const TextStyle(color: ConstColors.itColor),
//           ),
//         ),





// GestureDetector(
//           onTap: () => onTapFn(index, context),
//           child: Container(
//             alignment: Alignment.center,
//             height: 40,
//             // width: 140,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: selectedValued
//                     ? const Color.fromARGB(255, 103, 58, 183)
//                     : Colors.transparent),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15.0),
//               child: Text(
//                 newVal.textValue[index][0],
//                 style:
//                     const TextStyle(color: ConstColors.itColor, fontSize: 15),
//               ),
//             ),
//           ),
//         )