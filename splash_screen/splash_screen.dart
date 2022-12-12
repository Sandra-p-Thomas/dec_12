import 'dart:async';
import '../log_in/log_in_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                AuthPage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      body: ListView(
        children:[ Column(
          children:[
            Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.all(25),
            color: Color(0xFFf0f0f0)),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image:AssetImage('assets/images/appstore.png'))
              ),
            ),
            Container(
              padding:EdgeInsets.all(50),
              child:
            LinearProgressIndicator(
              minHeight: 5,
              backgroundColor: Colors.black,
              color: Color(0xFFf0f0f0),
            )
            ),
        ]
        ),
      ]),
    );
  }
}
