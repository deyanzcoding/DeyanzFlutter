import 'package:building_ui_and_navigation/add_to_cart.dart';
import 'package:building_ui_and_navigation/home_screen.dart';
import 'package:building_ui_and_navigation/screen_three.dart';
import 'package:building_ui_and_navigation/screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),      //just for Navigator method
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo(),
        ScreenThree.id: (context) => ScreenThree(),
        AddToCart.id: (context) => AddToCart(),
      },

    );
  }
}
