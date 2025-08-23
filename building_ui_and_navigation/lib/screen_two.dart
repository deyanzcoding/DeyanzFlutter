import 'package:flutter/material.dart';
import 'package:building_ui_and_navigation/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two' ;
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text('Second Screen')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(' 🔙 Press to move back'),
            ),

            TextButton(onPressed: () {
              Navigator.pushNamed(context, ScreenThree.id);
              
              //this code is for navigator.push
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => ScreenThree()),
              // );
            }, child: Text('Goto third screen')),
          ],
        ),

      ),
    );
  }
}
