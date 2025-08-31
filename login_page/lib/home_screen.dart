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
    await prefs.clear(); // remove all saved data

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image:
                    AssetImage('assets/images/logo.png'),
                    height: 70,
                      width: 70,
                    ),
                  ),
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
                        textAlign: TextAlign.left,
                        'Box',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Rubik Medium',
                          color: Color(0xfff9703B),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 200,),

              Text('Welcome to \nHome Page 🎉', style:
                TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontFamily: 'Rubik Medium',
                ),
              ),
              SizedBox(height: 120,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.appThemeBold,
                ),
                onPressed: _logout,
                child: const Text("Logout", style: TextStyle(color: Colors.white, fontFamily: 'Rubik Medium'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
