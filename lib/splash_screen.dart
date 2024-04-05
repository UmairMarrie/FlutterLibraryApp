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
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(context, RouteName.onboardpage);
     
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                height: 200,
                width: 200,
                image: 
              
              NetworkImage('https://uoc.edu.pk/images/logo.png')),
            )
          ],
        ),
      ),
    );
  }
}
