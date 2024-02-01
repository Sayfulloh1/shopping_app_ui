import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_commerce_shopping_app_ui/screens/home_screen.dart';
import 'package:e_commerce_shopping_app_ui/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'favorites_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          backgroundColor: const Color(0xffdb3022),
          onPressed: () {},
          child: const Icon(
            Icons.qr_code,
            // color: Color(0xffdb3022),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getFooter() {
    return AnimatedBottomNavigationBar(
      inactiveColor: Colors.black.withOpacity(.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      elevation: 0,
      activeColor: const Color(0xffdb3022),
      icons: const [
        CupertinoIcons.home,
        CupertinoIcons.cart,
        CupertinoIcons.heart,
        CupertinoIcons.profile_circled,
      ],
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}
