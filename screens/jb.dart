import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:slacks_test/screens/jbc.dart';
import 'package:slacks_test/screens/jbm.dart';

import 'details/detail_page.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/baggy.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/baggy_1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/baggy_2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                image: AssetImage("assets/images/bhs2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],

        //Slider Container properties
        options: CarouselOptions(
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          '  Products',
          style: Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      Divider(color: Colors.black87, endIndent: 12, indent: 12),
      Expanded(
        child: Padding(
          padding:  EdgeInsets.all(20),
          child: GridView.builder(
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ), itemBuilder: (context, index) => ItemCard(
            product: products[index],
            press: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => DetailPage(
               // product1: products[index],
              ),
            )),
          ),
          ),
        ),
      ),
    ],
    );
  }
}