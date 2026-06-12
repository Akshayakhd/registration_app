import 'package:flutter/material.dart';
//import 'package:registration_app/signup.dart';
import 'package:registration_app/welcome.dart';
//import 'package:registration_app/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Welcome()));
}
//firebasee core,firebaseauth,cloud firestore packages intalled from pub.dev