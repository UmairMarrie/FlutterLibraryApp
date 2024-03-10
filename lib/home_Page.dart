import 'package:first_app/whatsapp_ui.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("HomePAge"),
        backgroundColor: Colors.teal,

      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => WhatsappUi()));
              },
              child: Text("WhatsappUi"),
            ),
          )
        ],
      ),
    );
  }
}
