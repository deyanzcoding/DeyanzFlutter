import 'package:flutter/material.dart';
import 'package:multi_role_base_app_using_shared_preference/home_screen.dart';
import 'package:multi_role_base_app_using_shared_preference/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
