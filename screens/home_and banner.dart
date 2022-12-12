//
// import 'package:flutter/material.dart';
// import 'package:slacks_test/banner.dart';
// import 'package:slacks_test/screens/home-screen.dart';
// class Com extends StatelessWidget {
//   const Com({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//          child: Column(
//               children: [
//                 Banner1(),
//                 HomePage(),
//               ],
//             ),
//        ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:slacks_test/banner.dart';
import 'package:slacks_test/splash_screen/splash_screen.dart';

import 'home-screen.dart';
class Homiee extends StatefulWidget {
  const Homiee({Key? key}) : super(key: key);

  @override
  State<Homiee> createState() => _HomieeState();
}

class _HomieeState extends State<Homiee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Banner1(),
        HomePage()
        ],
      ),
    );
  }
}


