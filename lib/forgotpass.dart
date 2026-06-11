import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Forgot Password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Lottie.asset("assets/forgot.json"),
          ],
        ),
      ),
    );
  }
}
