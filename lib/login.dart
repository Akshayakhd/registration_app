import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration_app/forgotpass.dart';
import 'package:registration_app/signup.dart';

class Login extends StatelessWidget {
  TextEditingController emailc = TextEditingController();
  TextEditingController passc = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 2),
                Text(
                  "Login to your Account",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Email";
                    }
                    if (!(value.contains("@") && value.contains("."))) {
                      return "Enter a valid Email";
                    }
                  },
                  controller: emailc,
                  decoration: InputDecoration(
                    hintText: "Email",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your password";
                    }
                    if (value != passc.text) {
                      return "Password missmatches, Try again";
                    }
                  },
                  controller: passc,
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forgotpass()),
                    );
                  },
                  child: Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 15,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        print("Successfully Logins!!");
                      }
                      ;
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 60),
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Login"),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      "Don't have and account? ",
                      style: TextStyle(fontSize: 15),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Lottie.asset("assets/login.json"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
