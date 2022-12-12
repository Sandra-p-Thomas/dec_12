import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slacks_test/screens/jb.dart';

class Hanger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget> [
            IconButton(icon: Icon(Icons.home_outlined, color: Colors.black87,), onPressed: () {},),
            IconButton(icon: Icon(Icons.favorite_border_rounded,color: Colors.redAccent,), onPressed: () {},),
            IconButton(icon: Icon(Icons.person_outline_rounded,color: Colors.black87 ), onPressed: () {},),
            IconButton(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black87), onPressed: () {},),
          ],
        ),
      ),

    );
  }

}
