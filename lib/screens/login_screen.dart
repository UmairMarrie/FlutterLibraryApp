import 'package:first_app/utils/routes_name.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 100,
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
                      Text("Login"),
                    ],
                  ),
                ],
              ),
        
           
               SizedBox(
                    height: 80,
                  ),
        
              LoginText(hint: "Enter RegNo",),
               LoginText(hint: "Enter Password",),
                SizedBox(
                    height: 20,
                  ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, RouteName.mainpage);
                  },
                  child: Container(
                  height: 60,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(25.0)),
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  )),
                                ),
                )
          ],
        ),
      ),
    );
  }
}

class LoginText extends StatelessWidget {
  final String hint;
  const LoginText({super.key,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: hint,
          
            ),
      ),
    );
  }
}