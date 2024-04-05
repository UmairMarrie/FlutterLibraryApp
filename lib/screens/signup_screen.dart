import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController regNocontroller = TextEditingController();
  TextEditingController snamecontroller = TextEditingController();
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController deptcontroller = TextEditingController();
  TextEditingController semcontroller = TextEditingController();
  TextEditingController pnumcontroller = TextEditingController();
  TextEditingController addrcontroller = TextEditingController();
  TextEditingController coursecontroller = TextEditingController();
  TextEditingController ctitlecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  Future <void> InsertData() async {
    if (regNocontroller.text != "" &&
        snamecontroller.text != "" &&
        fnamecontroller.text != "" &&
        deptcontroller.text != "" &&
        semcontroller.text != "" &&
        pnumcontroller.text != "" &&
        addrcontroller.text != "" &&
        coursecontroller.text != "" &&
        ctitlecontroller.text != "" &&
        passcontroller.text != "") {
      try {
        var req = await http.post(
            Uri.parse("http://192.168.100.9/libApi/insertrecord.php"),
            body: {
              "RegNo": regNocontroller.text,
              "SName": snamecontroller.text,
              "FName": fnamecontroller.text,
              "Dept": deptcontroller.text,
              "Sem": semcontroller.text,
              "PNum": pnumcontroller.text,
              "Addr": addrcontroller.text,
              "Course": coursecontroller.text,
              "Dtitle": ctitlecontroller.text,
              "Pass": passcontroller.text,
            });
        if (req.statusCode == 200) {
           Toast.show("Register Sucessfully",backgroundColor: Colors.green,gravity: Toast.bottom,);
          print("Inserted Sucess.....");
          regNocontroller.text = "";
          snamecontroller.text = "";
          fnamecontroller.text = "";
          deptcontroller.text = "";
          semcontroller.text = "";
          pnumcontroller.text = "";
          addrcontroller.text = "";
          coursecontroller.text = "";
          ctitlecontroller.text = "";
          passcontroller.text = "";
        } else {
          print("Error");
        }
      } catch (e) {
        print(e);
      }
    } else {
     Toast.show("please fill all fileds",backgroundColor: Colors.red,gravity: Toast.bottom);
    }
  }

  @override
  Widget build(BuildContext context) {
     ToastContext().init(context);
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
            MyTextField(
              hintName: "Enter RegNo",
              controller: regNocontroller,
            ),
            MyTextField(
              hintName: "Enter Name",
              controller: snamecontroller,
            ),
            MyTextField(
              hintName: "Enter FatherName",
              controller: fnamecontroller,
            ),
            MyTextField(
              hintName: "Enter Department",
              controller: deptcontroller,
            ),
            MyTextField(
              hintName: "Enter Semester",
              controller: semcontroller,
            ),
            MyTextField(
              hintName: "Enter MobileNumber",
              controller: pnumcontroller,
            ),
            MyTextField(
              hintName: "Enter Address",
              controller: addrcontroller,
            ),
            MyTextField(
              hintName: "Enter Degree",
              controller: coursecontroller,
            ),
            MyTextField(
              hintName: "Enter DegreeTitle",
              controller: ctitlecontroller,
            ),
            MyTextField(
              hintName: "Enter Password",
              controller: passcontroller,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                InsertData();
              },
              child: Container(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hintName;
  TextEditingController controller;
  MyTextField({super.key, required this.hintName, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintName,
        ),
      ),
    );
  }
}
