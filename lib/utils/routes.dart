import 'package:first_app/screens/home_Page.dart';
import 'package:first_app/splash_screen.dart';
import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashscreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case RouteName.intoPage:
        return MaterialPageRoute(builder: (context) =>HomePage());

      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  body: Center(
                    child: Text("No page"),
                  ),
                ));
    }
  }
}
