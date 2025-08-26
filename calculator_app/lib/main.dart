import 'package:calculator_app/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  children: [
                    MyButton(title: 'Sign up', subtitle: '<Testing>',),
                    MyButton(title: 'Log in', subtitle: '<Testing>',),

                  ]
              ),
            )
        ),
      ),
    );
  }
}
