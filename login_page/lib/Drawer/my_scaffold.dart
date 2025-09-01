import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/Drawer/student_card.dart';
import 'package:login_page/Drawer/transport_screen.dart';
import 'package:login_page/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screen.dart';
import '../widgets/app_colors.dart';
import 'fee_history.dart';
import 'hostel_screen.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  Future<void> _logout ()  async {
    final prefs = SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
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

      //drawer (sidebar items)
      drawer: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Container(
            width: 250,

            child: Drawer(
                child: ListView(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: AppColors.appThemeBold,
                      ),

                      currentAccountPicture:CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/deyan_white.png'),
                      ),

                      accountName: Text('Deyan Ahmad', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w700),),
                      accountEmail: Text('deyanzcoding@gmail.com'),
                    ),

                    // drawer Dashboard
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.house),
                      title: Text('Dashboard', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),

                    // drawer student card
                    ListTile(
                      leading: FaIcon(FontAwesomeIcons.idCard),
                      title: Text('Student Card', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StudentCard()),
                        );
                      },
                    ),

                    // drawer hostel
                    ListTile(
                      leading: const FaIcon(FontAwesomeIcons.hotel ),
                      title: Text('Hostel Facility', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HostelScreen()),
                        );
                      },
                    ),

                    // drawer Transport Facility
                    ListTile(
                      leading: const FaIcon(FontAwesomeIcons.bus ),
                      title: Text('Transport Facility', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TransportScreen()),
                        );
                      },
                    ),

                    // drawer fee history
                    ListTile(
                      leading: const FaIcon(FontAwesomeIcons.moneyCheckDollar ),
                      title: Text('Fee History', style: TextStyle(fontSize: 15.5, fontFamily: 'Rubik Regular', fontWeight: FontWeight.w500),),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FeeHistory()),
                        );
                      },
                    ),


                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.appThemeBold,
                        ),
                        onPressed: _logout,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(FontAwesomeIcons.rightFromBracket, color: Colors.white,),
                            SizedBox(width: 10,),

                            const Text(
                              "Logout",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Rubik Medium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                )
            ),
          ),
        ),
      ),


    );
  }
}
