import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:registration_app/login.dart';

class Forgotpass extends StatelessWidget {
  TextEditingController emailc = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: Padding(
          key: formkey,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required ";
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

                ElevatedButton(onPressed: () {}, child: Text("revovery link")),
                Lottie.asset("assets/forgot.json"),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text("back to login"),
                ),

                //ElevatedButton(onPressed: () {}, child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
