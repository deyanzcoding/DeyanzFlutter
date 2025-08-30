import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/home_screen.dart';
import 'package:navigation_routing_chp_11/screen_five.dart';
import 'package:navigation_routing_chp_11/screen_four.dart';
import 'package:navigation_routing_chp_11/screen_three.dart';
import 'package:navigation_routing_chp_11/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main Screen',
      theme: ThemeData(primarySwatch: Colors.blue),

      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
        ScreenTwo.id : (context) => ScreenTwo(),
        ScreenThree.id : (context) => ScreenThree(name: 'deyan', age: 20,),
        ScreenFour.id : (context) => ScreenFour(),
        ScreenFive.id: (context) => ScreenFive(),
      },
    );
  }
}
