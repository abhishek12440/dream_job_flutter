import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 248, 223, 187),
                filled: true,
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                fillColor: const Color.fromARGB(255, 248, 223, 187),
                filled: true,
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 350),
                child: Text(
                  "forgot your password?",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
                ),
              ),
            ),TextButton(onPressed: () {
              
            }, child: Text("sign in"))
          ],
        ),
      ),
    );
  }
}
