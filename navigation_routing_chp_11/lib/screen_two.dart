import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/screen_three.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';

  // final String name;
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Screen 2'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Navigation through id
          // Text(arguments.toString()),
          // Text('Name: ' + arguments['name']),
          // Text('Age: ' + arguments['age']),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
              onTap: () {
              Navigator.pushNamed(context, ScreenThree.id,
              arguments: {
                'gpa': '3.41',
                'uni': 'awkum',
              }
              );

              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade300,
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
