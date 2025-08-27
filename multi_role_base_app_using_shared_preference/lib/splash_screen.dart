import 'dart:async';

import 'package:flutter/material.dart';
import 'package:multi_role_base_app_using_shared_preference/home_screen.dart';
import 'package:multi_role_base_app_using_shared_preference/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => LoginScreen())
      );
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: double.infinity,
        fit: BoxFit.fitHeight,
        image: NetworkImage(
          'https://images.pexels.com/photos/33400608/pexels-photo-33400608.jpeg',
        ),
      ),
    );
  }
}
