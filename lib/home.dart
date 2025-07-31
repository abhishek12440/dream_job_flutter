import 'package:dream_job_flutter/login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
            ),SizedBox(height: 50,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),SizedBox(width: 20,),
                GestureDetector(
                  onTap: () {},
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
