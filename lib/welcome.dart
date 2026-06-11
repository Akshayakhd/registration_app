import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration_app/login.dart';
import 'package:registration_app/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Lottie.asset("assets/welcome robo.json"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 60),
                backgroundColor: const Color.fromARGB(255, 254, 254, 254),
                side: BorderSide(
                  color: const Color.fromARGB(255, 19, 20, 22),
                  width: 2,
                ),
                foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                // shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(4),
              ),
              child: Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 60),
                backgroundColor: const Color.fromARGB(255, 28, 115, 215),
                side: BorderSide(
                  color: const Color.fromARGB(255, 235, 237, 243),
                  width: 2,
                ),
                foregroundColor: const Color.fromARGB(255, 228, 220, 220),
                // shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(4),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text("Sign up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
