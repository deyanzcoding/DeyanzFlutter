import 'package:building_ui_and_navigation/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: TextButton(onPressed: () {
            Navigator.pushNamed(context, ScreenTwo.id);

            //this code is for Navigator.push
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => ScreenTwo())
            // );
          },
              child: Text('Screen 1')
          ),
        ),
      ),
    );
  }
}
