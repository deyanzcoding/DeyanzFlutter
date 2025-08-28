// Stateful-Widget
// Animated Opacity

import 'package:flutter/material.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp", //app title

      home: DashBoardScreen(),
    );
  }
}


// for making any page for home page
class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreen();
}

class _DashBoardScreen extends State<DashBoardScreen> {
  var myOpacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'), //app bar title
      ),

      body:
          //foo-animated container
          // Center(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       AnimatedContainer(
          //         width:  200,
          //         height: 200,
          //         color: Colors.amber,
          //         duration: Duration(
          //           seconds: 2,
          //         )
          //       ),
          //       ElevatedButton(onPressed: (
          //       ) {
          //       }, child: Text('Animate'))
          //     ],
          //   ),
          // )
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: myOpacity,
                  duration: Duration(seconds: 2),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      myOpacity = 0.0;
                    });
                  },
                  child: Text("Close"),
                ),
              ],
            ),
          ),
    );
  }
}
