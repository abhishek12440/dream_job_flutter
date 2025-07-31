import 'package:dream_job_flutter/account.dart';
import 'package:dream_job_flutter/firebase_options.dart';
import 'package:dream_job_flutter/home.dart';
import 'package:dream_job_flutter/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
     
      home:Home()
    );
  }
}

