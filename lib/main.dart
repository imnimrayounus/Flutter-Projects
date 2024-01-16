import 'package:chaicraft/constant/colors.dart';
import 'package:chaicraft/modal/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen/splash-screen/splash_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChaiCraft',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: choclateColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
