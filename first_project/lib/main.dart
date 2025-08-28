import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        
        
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('I am AppBar'),
        ),


        body: Center(  
          child: Image(
            image:AssetImage('assets/images/deyan.png')
             )

        ),
      ),
    );
  }
}
