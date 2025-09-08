import 'package:api_practice/exampleModel.dart';
import 'package:api_practice/exampleUserModel.dart';
import 'package:api_practice/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'exampleUserModel2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Exampleusermodel2(),
    );
  }
}
