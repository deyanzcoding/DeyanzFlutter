import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _useremailController = TextEditingController();

  Future<void> _login() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('username', _usernameController.text);
    await prefs.setString('useremail', _useremailController.text);
    await prefs.setBool('isLoggedIn', true);

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen())
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // Logo
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Maintenance',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                        ),
                      ),
                      Text(
                        'Box',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xfff9703B),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 100),
              // After-logo content
              Center(
                child: Text(
                  'Login, plz...',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff2D3142),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Welcome back! We\'ve missed you 😊',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4c5980),
                  ),
                ),
              ),
              SizedBox(height: 20),

              //TextFormField (inputbox for email & password)
              //email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(
                      Icons.alternate_email,
                      color: Color(0xff323f4B),
                    ),
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //password
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_open, color: Color(0xff323f4B)),
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE4E7EB)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Box Container
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(0xffF9703B),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Center(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Medium',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              //row for signup
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff4C5980),
                      fontFamily: 'Rubik Medium',
                    ),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xffF9703B),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
