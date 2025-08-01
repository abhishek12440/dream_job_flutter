import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> login({
  required BuildContext context,
  required String email,
  required String password,
}) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Login successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> create({
  required BuildContext context,
  required String email,
  required String password,
  required String confirmpassword,
}) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    

    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Register successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}
