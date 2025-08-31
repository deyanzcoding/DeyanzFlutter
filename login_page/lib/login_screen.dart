import 'package:flutter/material.dart';
import 'package:login_page/signup_screen.dart';
import 'package:login_page/widgets/button_component.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //A boolean variables
  bool _isPasswordVisible = false;
  bool _isError = false;
  String _errorMessage = '';

  //Retrieving the email & password from signUp screen
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  //Resets the error state and message when the user start typing
  void _resetErrorState() {
    if (_isError) {
      setState(() {
        _isError = false;
        _errorMessage = '';
      });
    }
  }

  //Handles the login logic by checking credential from SharedPreferences.
  Future<void> _login() async {
    if(_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();
      final savedEmail = prefs.getString('useremail');
      final savedPassword = prefs.getString('userpassword');

      if (savedEmail == _emailController.text &&
          savedPassword == _passwordController.text) {
        await prefs.setBool('isLoggedIn', true);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      } else {
        setState(() {
          _isError = true;
          _errorMessage = 'Incorrect email or password. Please try again.';
        });
      }
    }
  }

  //cleaning the memory space
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  // Logo
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo.png'),
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Maintenance',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Rubik Medium',
                            ),
                          ),
                          Text(
                            'Box',
                            style: TextStyle(
                              fontSize: 25,
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
                      'Login',
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

                  // Error message
                  if (_isError)
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10),
                      child: Text(
                        _errorMessage,
                        style:  TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ),

                  //TextFormField (inputbox for email & password)
                  //email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (_) => _resetErrorState(),     //accepting the required String argument, even if you don't use it. You can represent the unused parameter with an underscore (_) to indicate that it's intentionally ignored
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: Color(0xff323f4B),
                        ),
                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: _isError ? Colors.red : Color(0xffE4E7EB),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: _isError ? Colors.red : Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorText: _isError ? _errorMessage : null,
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

                  //password
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: TextFormField(
                      controller: _passwordController,
                      onChanged: (_) => _resetErrorState(),
                      obscureText: !_isPasswordVisible,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Color(0xff323f4B),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            // Changes the icon based on the state.
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            // Call setState to rebuild the widget and toggle the visibility state.
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),

                        fillColor: Color(0xffF8F9FA),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: _isError ? Colors.red : Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: _isError ? Colors.red :  Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        errorText: _isError ? null : null,  //handle by email.
                      ),

                      //validators
                      validator: (value) {
                        if(value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        if(value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 15),

                  // login button Container
                  MyButton(
                    text: 'LOGIN',
                    onPressed: () => _login(),
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
                      GestureDetector(
                        onTap: () {
                          // Navigate to the signup screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xffF9703B),
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
