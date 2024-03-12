import 'dart:async';

import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, RouteName.intoPage);
     
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        decoration: BoxDecoration(
          
          gradient: LinearGradient(
             begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.orangeAccent,
            Colors.teal,
          
          ],
          
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(image: AssetImage('images/libicon.png')),
            )
          ],
        ),
      ),
    );
  }
}
