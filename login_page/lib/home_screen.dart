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
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: AppColors.appThemeBold,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
            top: true,
        child: SingleChildScrollView(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 60,
                    width: 60,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.error, size: 70),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ABDUL WALI KHAN',
                        style: TextStyle(
                          fontSize: 22,
                          color: AppColors.blackBold,
                          fontFamily: 'Rubik Medium',
                        ),
                      ),
                      Text(
                        'UNIVERSITY MARDAN',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xff710000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.appThemeBold,
                    borderRadius: BorderRadius.circular(30),
                    
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/deyan_white.png'),
                      ),

                      Text('$username', style: TextStyle(fontSize: 22, color: Colors.white, fontFamily: 'Rubik Medium'),),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
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
    );
  }
}
