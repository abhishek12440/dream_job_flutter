import 'package:dream_job_flutter/account.dart';
import 'package:dream_job_flutter/login.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage("job.png")),
            SizedBox(height: 80),
            Text(
              "Discover Your ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Dream Job Here",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Explore all the existing job roles based on your interest and study major",
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: ElevatedButton(
                    onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );},
                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.orange,
                      foregroundColor: const Color.fromARGB(222, 248, 247, 247),
                    ),
                    child: Text(
                      "login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Account()),
                  );},
                  child: Text(
                    "register",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
