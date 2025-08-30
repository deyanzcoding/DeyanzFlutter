import 'package:flutter/material.dart';
import 'package:navigation_routing_chp_11/home_screen.dart';
import 'package:navigation_routing_chp_11/utils/routes_names.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings)
  switch(settings.name) {

    case RouteName.homeScreen;
      return MaterialPageRoute(builder: (context) => HomeScreen());
  }
}