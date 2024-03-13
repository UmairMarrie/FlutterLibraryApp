import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 80,
                  width: 70,
                  image: NetworkImage('https://uoc.edu.pk/images/logo.png'),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Text("Student"),
                    Text("SignUp"),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(),
            MyTextField(),
            MyTextField(),
            MyTextField(),
            MyTextField(),
            MyTextField(),
            MyTextField(),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(25.0)),
              child: Center(
                  child: Text(
                "SignUp",
                style: TextStyle(color: Colors.white),
              )),
            )
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: "Name"),
      ),
    );
  }
}
