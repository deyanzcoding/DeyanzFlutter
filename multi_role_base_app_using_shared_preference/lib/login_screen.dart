import 'package:flutter/material.dart';
import 'package:multi_role_base_app_using_shared_preference/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();

              sp.setString('name', 'Deyan');
              sp.setInt('age', 20);
              sp.setDouble('gpa', 3.41);
              sp.setBool('isLogin', false);

              print(sp.getString('name'));
              print(sp.getInt('age'));
            },
          ),


        ],
      ),




    );
  }

  Future<int> asifTaj() async {
   await Future.delayed(Duration(seconds: 3));

    print('delayed');
    return 10;
  }
}
