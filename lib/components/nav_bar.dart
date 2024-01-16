import 'package:chaicraft/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTabChange});
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade300,
        activeColor: choclateColor,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
          // GButton(
          //   icon: Icons.favorite_border_outlined,
          //   text: 'Likes',
          // ),
        ],
      ),
    );
  }
}
