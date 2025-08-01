import 'package:dream_job_flutter/account.dart';
import 'package:dream_job_flutter/service.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Emailcount = TextEditingController();
  TextEditingController Passwordcount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              "Login Here ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome  back you've been missed!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: Emailcount,
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
                controller: Passwordcount,
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 248, 223, 187),
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 350),
                child: Text(
                  "forgot your password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                login(
                  context: context,
                  email: Emailcount.text,
                  password: Passwordcount.text,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 190, 10),
                foregroundColor: Colors.white,
              ),
              child: Align(
                child: Text(
                  "sign in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              child: Text(
                "create a new account",
                style: TextStyle(fontWeight: FontWeight.bold),
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
