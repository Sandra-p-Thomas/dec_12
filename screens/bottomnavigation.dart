import 'package:flutter/material.dart';
import 'package:moony_nav_bar/moony_nav_bar.dart';
import 'package:slacks_test/screens/details/detail_page4.dart';

import '../banner.dart';
import 'home-screen.dart';
class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  Widget _screen1 = HomePage();
  Widget _screen2 = Banner1();
  Widget _screen3 = Detailpage_4();
  Widget _screen4 = Banner1();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: getBody(),
        bottomNavigationBar: MoonyNavigationBar(
          items: <NavigationBarItem>[
            NavigationBarItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home,
                color: Colors.black,
                onTap: () {
                  onTapHandler(0);
                }),
            NavigationBarItem(
                icon: Icons.category_outlined,
                activeIcon: Icons.category,
                color: Colors.black,
                onTap: () {
                  onTapHandler(1);
                }),

            NavigationBarItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                color: Colors.black,
                onTap: () {
                  onTapHandler(3);
                }),
            NavigationBarItem(
                icon: Icons.shopping_cart_outlined,
                activeIcon: Icons.shopping_cart,
                color: Colors.black,
                onTap: () {
                  onTapHandler(2);
                }),
          ],
          style: MoonyNavStyle(
            //
            indicatorPosition: IndicatorPosition.TOP,
            indicatorType: IndicatorType.POINT,
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._screen1;
    } else if (this.selectedIndex == 1) {
      return this._screen2;
    } else if (this.selectedIndex == 2) {
      return this._screen3;
    }
    return this._screen4;
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}