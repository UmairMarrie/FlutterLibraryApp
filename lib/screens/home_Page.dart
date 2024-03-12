import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Image(
              width: 200,
              height: 200,
              image: NetworkImage('https://uoc.edu.pk/images/logo.png'),
            ),
          ),
          Container(
            height: 340,
            width: 300,
            child: Text(
              "Library and Central Library of University of Chakwal plays a vital role in the academic life of a university. The fundamental role of the libraries is educational. It should not be operated as a mere storehouse of books, rather it should be a dynamic instrument of education. The Library and Central Library of the university is being organized on these lines.The library and central library collections support not only every course in the curriculum but also include selected stock of general reference books, periodicals, publications, newspapers etc. Most of the departments have their own departmental libraries situated in their own buildings. The administration of the Libraries are vested in the Library Committee.",
              textAlign: TextAlign.justify,
              style: TextStyle(),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
           
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(text: "SignUp",),
                  SizedBox(width: 20,),
                  MyButton(text: "Login",),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {

  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 130,
      decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(20.0),
         color: Colors.teal
          ),
      child: Center(
          child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white
        ),
      )),
    );
  }
}
