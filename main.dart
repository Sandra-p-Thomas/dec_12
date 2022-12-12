import 'package:flutter/material.dart';
import 'package:slacks_test/log_in/database.dart';
import 'package:slacks_test/screens/bottomnavigation.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/home_and%20banner.dart';
import 'package:slacks_test/screens/jbh.dart';
import 'package:slacks_test/splash_screen/splash_screen.dart';

import 'banner.dart';
import 'editing_fire.dart';
import 'log_in/log_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  //   home: Banner1(),
   //  home: Hanger(), // home screen
  //  home: MyHomePage(),  //too add splash screen
      //   home: ProfilePage(),
    home: Backoff(),
   // home: HomePage(),
     // home: AuthPage(),

    );
  }
}
