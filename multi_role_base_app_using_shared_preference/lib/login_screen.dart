import 'package:flutter/material.dart';
import 'package:multi_role_base_app_using_shared_preference/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final ageController = TextEditingController();
  final isLogin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment  .center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
              TextFormField(
                controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password ',
              ),
            ),
            TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Age ',
              ),
            ),
            SizedBox(height: 10,),
            // Image(image: NetworkImage('https://images.pexels.com/photos/14408339/pexels-photo-14408339.jpeg')),
            SizedBox(
              height: 10,
            ),

            InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('email', emailController.text.toString());
                sp.setString('age', ageController.text.toString());
                
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: Center(
                  child: Text('Save details'),
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
