
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override

  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
               Navigator.pushNamed(context, ScreenTwo.id,
               arguments: {
                 'name': 'Deyan',
                 'age': '20',
                 }
               );

                // Navigator.push(context,
                // MaterialPageRoute(builder: (context) => ScreenTwo(name: 'deyan')));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: Colors.black26),
                ),
                child: Center(child: Text('Next')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
