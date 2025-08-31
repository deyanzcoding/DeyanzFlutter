import 'package:flutter/material.dart';
import 'package:login_page/login_screen.dart';
import 'package:login_page/widgets/app_colors.dart';
import 'package:login_page/widgets/button_component.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
    bool _isPasswordVisible = false;

    @override
  Widget build(BuildContext context) {
      final TextEditingController emailController = TextEditingController();
      final TextEditingController passwordController = TextEditingController();

      Future<void> saveCredentials() async {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('email', emailController.toString());
        prefs.setString('password', passwordController.toString());

        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
        );
      }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xffF9703B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.person, size: 80, color: Colors.white),
                  ),
                ),
              ),
          
              SizedBox(height: 10),
              // After-logo content
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: 'Rubik Medium',
                    color: Color(0xff2D3142),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Text(
                  "Sign up to get started 🚀",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Rubik Regular',
                    color: Color(0xff4c5980),
                  ),
                ),
              ),
              SizedBox(height: 10),
          
              //name TextFormField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person, color: Color(0xff323f4B)),
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
          
              //email TextFormField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
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
          
              //password TextFormField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        )
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
                  obscureText: !_isPasswordVisible,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.visiblePassword,

                ),
              ),
              SizedBox(height: 10),
          
              //confirm password TextFormField
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                        )
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
                  obscureText: !_isPasswordVisible,
                  obscuringCharacter: '*',
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 10),
          
              //signup button
              MyButton(
                  text: 'SIGN UP',
                  onPressed: () {
                    onPressed: saveCredentials;
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  }
              ),
              SizedBox(height: 8),
          
              //already have account
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: AppColors.appThemeGrey,
                      fontSize: 16,
                      fontFamily: 'Rubik Medium',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.appThemeBold,
                        fontFamily: 'Rubik Medium',
                      ),
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
