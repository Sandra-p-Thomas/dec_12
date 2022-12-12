import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/screens/bottomnavigation.dart';
import 'package:slacks_test/screens/details/detail_page.dart';
import 'package:slacks_test/screens/details/frame.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/jbm.dart';

class Banner1 extends StatelessWidget {
  const Banner1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      CarouselSlider(
      items: [
      Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("assets/images/banner_1.png"),
    )),
    ),
    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage("assets/images/banner_2.png"),
    )),
    )
    ],
    options: CarouselOptions(
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayCurve: Curves.fastOutSlowIn,
    enableInfiniteScroll: true,
    autoPlayAnimationDuration: Duration(milliseconds: 2000),
    viewportFraction: 0.8,
    )),
    Padding(padding: EdgeInsets.all(15),),
Row(
 children: [
   Column(
     children: [
       Container(
         decoration: BoxDecoration(
           color: Colors.black
         ),
       ),
       Container(
         decoration: BoxDecoration(
             color: Colors.black
         ),
       ),
     ],
   ),
    Column(
    children: [
    Container(
    decoration: BoxDecoration(
    color: Colors.black
    ),
    ),
    Container(
    decoration: BoxDecoration(
    color: Colors.black
    ),
    ),
    ],),
 ],

)          ]
      )
    );
  }
}
