import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  // colors
  static const Color backgroundColor = Color(0xffECE0D1);
  static const Color primaryColor = Color(0xff967259);
  static const Color darkTheme = Color(0xff1A1C29);
  static const Color darkThemeCard = Color(0xff2F3548);

  // text color
  static const textColor = Color(0xff444444);

  // spacing

  static const double spaceBetweenSections = 25;




  // bottom navigation bar
  static Widget navigationItems() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ""),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: ""),
          ],
        ),
      ),
    );
  }
}
