import 'package:flutter/material.dart';
class MainPage  extends StatelessWidget {
  const MainPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Center(child: Text("Main Table"),)
        ],)
      ),
    );
  }
}