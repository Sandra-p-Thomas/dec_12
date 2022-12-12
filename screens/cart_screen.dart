//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slacks_test/log_in/button.dart';
import 'package:slacks_test/screens/details/detail_page.dart';
import 'bottomnavigation.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  get isDarkMode => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SafeArea(
        child: ListView(
          children: [
       Container(
         alignment: Alignment.topLeft,
         child: IconButton(onPressed: (){
      Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back)
      ),
       ),
            Container(
              height:600,
              width: 19,
            ),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                    shape: StadiumBorder()
                ),
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DetailPage()));//add payment method
                },
                child: Text('BUY NOW',
                  style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),
      )
    );
  }
}
