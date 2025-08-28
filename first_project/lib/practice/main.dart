import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlutterApp", //app title

      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          headlineMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          headlineSmall: TextStyle(fontSize: 11),
        ),
      ),
      home: DashBoardScreen(),
    );
  }
}

// for making any page for home page
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.red,
      Colors.blue,
      Colors.black,
      Colors.orange,
      Colors.green,
      Colors.grey,
      Colors.purple,
    ];

    return Scaffold(
      // /Scaffold or MaterialApp
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        title: Text('My Dashboard'), //app bar title
      ),

      body:
          // GridView.count(crossAxisCount: 3,
          // children: [
          //   Container(color: Colors.amber,),
          //   Container(color: Colors.black,),
          //   Container(color: Colors.purple,),
          //   Container(color: Colors.orange,),
          //   Container(color: Colors.blue,),
          //   Container(color: Colors.green,),
          //   Container(color: Colors.brown,),
          //   ],)
          //grid-view extend
          // GridView.extent(maxCrossAxisExtent: 50,
          //   crossAxisSpacing: 11,
          //   mainAxisSpacing: 11,
          //   children: [
          //     Container(color: Colors.red,),
          //     Container(color: Colors.blue,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //     Container(color: Colors.orange,),
          //     Container(color: Colors.red,),
          //   ],
          // )
          //grid-view builder
          // GridView.builder(
          //   itemBuilder: (context, index) {
          //     return Container(color: arrColors[index]);
          //   },
          //   itemCount: arrColors.length,
          //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          //     maxCrossAxisExtent: 100,
          //     crossAxisSpacing: 11,
          //     mainAxisSpacing: 11,
          //   ),
          // ),

        ElevatedButton(
          child: Text('Click Me!!'),
          onPressed: () {
            print('Clicked!!!!!!');            
          },
          
        )
 
    );
  }
}
