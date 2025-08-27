import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                asifTaj();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: Center(
                  child: Text('Click'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<int> asifTaj() async {
   await Future.delayed(Duration(seconds: 3));

    print('delayed');
    return 10;
  }
}
