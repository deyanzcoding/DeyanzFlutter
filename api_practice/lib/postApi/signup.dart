import 'package:flutter/material.dart';
import 'package:http/http.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) {

    try{
      Response response = await post(
        Uri.parse('https://reqres.in/reqres-free-v1'),
        body: {
          'email' : emailController,
          'password' : passwordController,
        }
      );
    } catch {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('post api Signup practice'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              hintText: 'Email',
            ),

          ),
          SizedBox(height: 20,),

          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          SizedBox(height: 40,),

          GestureDetector(
          onTap: () {
            login(emailController.text.toString(), passwordController.text.toString());
          },

            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
              color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1.5, color: Colors.black45)
              ),
              child: Center(child: Text('Sign Up', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),),
            ),
          )
        ],
      ),
    );
  }
}


