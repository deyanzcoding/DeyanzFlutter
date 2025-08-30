import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/home_screen.dart';
import 'package:navigation_routing_chp_11/main.dart';
import 'package:navigation_routing_chp_11/screen_five.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
  static const String id = 'screen_four';
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Four'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('onDoubleTap -> screen five'),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onDoubleTap: () {
                Navigator.pushNamed(context, ScreenFive.id);

                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => HomeScreen())
                // );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(child: Text('Goto ScreenFive')),
              ),
            ),
          ),
        ],
      ),


    );
  }
}
