import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/home_screen.dart';
import 'package:navigation_routing_chp_11/main.dart';
import 'package:navigation_routing_chp_11/screen_four.dart';
import 'package:navigation_routing_chp_11/screen_two.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';

  // final String name;
  // final int age;
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Navigation through id
          // Text(arguments.toString()),
          // Text('GPA: ' + arguments['gpa']),
          // Text('University : ' + arguments['uni']),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenFour()
                ));
                },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(child: Text('Push Screen ➡️')),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(child: Text('⬅️ Pop Screen')),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
