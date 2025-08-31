import 'package:flutter/material.dart';
import 'package:login_page/login_screen.dart';
import 'package:login_page/widgets/app_colors.dart';
import 'package:login_page/widgets/button_component.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}


class _SignupScreenState extends State<SignupScreen> {
    bool _isPasswordVisible = false;
    bool _isConfirmPasswordVisible = false;
    final _formKey = GlobalKey<FormState>();

    //controllers
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();


    //to clear the memory.
    @override
    void dispose() {
      nameController.dispose();
      emailController.dispose();
      passwordController.dispose();
      confirmPasswordController.dispose();
      super.dispose();
    }

      @override
  Widget build(BuildContext context) {

      Future<void> saveCredentials() async {
        if(_formKey.currentState!.validate()) {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('username', nameController.text);
        await prefs.setString('useremail', emailController.text);
        await prefs.setString('userpassword', passwordController.text);
        await prefs.setBool('isLoggedIn', true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        }
      }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                    controller: nameController,
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

                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      if(value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
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
                    controller: confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                            });
                          },
                          icon: Icon(
                            _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please confirm your password';
                      }
                      if (value != passwordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                    obscureText: !_isConfirmPasswordVisible,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(height: 10),
            
                //signup button
                MyButton(
                    text: 'SIGN UP',
                    onPressed: () {
                       saveCredentials();
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
                    GestureDetector(
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
      ),
    );
  }
}
