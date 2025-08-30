import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/home_screen.dart';
import 'package:navigation_routing_chp_11/screen_three.dart';
import 'package:navigation_routing_chp_11/screen_two.dart';
import 'package:navigation_routing_chp_11/utils/routes_names.dart';

import '../screen_five.dart';
import '../screen_four.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo());
      case RouteName.screenThree:
        return MaterialPageRoute(builder: (context) => ScreenThree());
      case RouteName.screenFour:
        return MaterialPageRoute(builder: (context) => ScreenFour());
      case RouteName.screenFive:
        return MaterialPageRoute(builder: (context) => ScreenFive());

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(body: Center(child: Text('No route define')));
          },
        );
    }
  }
}
