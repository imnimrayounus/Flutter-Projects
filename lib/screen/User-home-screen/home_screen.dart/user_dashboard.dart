import 'package:chaicraft/components/nav_bar.dart';
import 'package:chaicraft/screen/User-home-screen/user_cart_screen/user_cart_screen.dart';
import 'package:chaicraft/screen/User-home-screen/user_shop_screen/user_shop_screen.dart';
import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopScreen(),
    const CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar:
            BottomNavBar(onTabChange: (index) => navigationBottomBar(index)),
        body: _pages[_selectedIndex],
      ),
    );
  }
}
