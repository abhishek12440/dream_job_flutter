import 'package:dream_job_flutter/login.dart';
import 'package:dream_job_flutter/service.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Create Account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Text("Create an account so you can explore alll the existing jobs"),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Emailcontroller,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 223, 187),
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Passwordcontroller,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 223, 187),
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: confirmpasswordcontroller,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 223, 187),
                  filled: true,
                  hintText: "Confirm Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                create(
                  context: context,
                  email: Emailcontroller.text,
                  password: Passwordcontroller.text,
                  confirmpassword: confirmpasswordcontroller.text,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 190, 10),
                foregroundColor: Colors.white,
              ),
              child: Align(
                child: Text(
                  "sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },

              child: Text(
                "Already have an account ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 6, 6, 5),
                ),
              ),
            ),
            SizedBox(height: 40),
            Text("or continue with", style: TextStyle(color: Colors.orange)),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 215),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),

                  IconButton(onPressed: () {}, icon: Icon(Icons.apple)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
