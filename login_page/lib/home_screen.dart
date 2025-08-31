import 'package:flutter/material.dart';
import 'package:login_page/widgets/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String username = "";

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? "User";
    });
  }

  Future<void> _logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false); // Only clear isLoggedIn

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('Home'),
      //   backgroundColor: const Color(0xffF9703B),
      //   foregroundColor: Colors.white,
      // ),
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 70,
                        width: 70,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, size: 70),
                      ),
                    ),
                    const Column(
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
                            color: Color(0xffF9703B),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 200),
                Column(
                  children: [
                    Text(
                      'Welcome to \nHome Page 🎉',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: 'Rubik Medium',
                      ),
                    ),
                    Text(
                      '$username',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xffF9703B),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 120),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appThemeBold,
                  ),
                  onPressed: _logout,
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Rubik Medium',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
