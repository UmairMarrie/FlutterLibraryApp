import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HomePage",style: TextStyle(color: Colors.white),),
          centerTitle: true,
        
          automaticallyImplyLeading: false,
          backgroundColor: Colors.orangeAccent,
          
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         
          ],
        ),
      ),
    );
  }
}
