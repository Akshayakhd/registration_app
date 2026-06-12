import 'package:flutter/material.dart';
import 'package:registration_app/login.dart';
import 'package:registration_app/service.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //const Signup({super.key});
  TextEditingController emailc = TextEditingController();

  TextEditingController passc = TextEditingController();

  TextEditingController forgpassc = TextEditingController();

  TextEditingController userc = TextEditingController();

  final formkey = GlobalKey<FormState>();

  bool pass_isvisible = true;

  bool conf_isvisible = true;

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
                  "Sign up",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 2),
                Text(
                  "Create an account,its free",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Username",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  controller: userc,
                  decoration: InputDecoration(
                    hintText: "Username",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
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
                  obscureText: pass_isvisible,
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
                  alignment: Alignment.topLeft,
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
                    if (value.length != 8) {
                      return "requires 8 characters or numbers";
                    }
                  },
                  controller: passc,
                  obscureText: pass_isvisible,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          pass_isvisible = !pass_isvisible;
                        });
                      },
                      icon: pass_isvisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextFormField(
                  obscureText: conf_isvisible,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your password";
                    }
                    if (value != passc.text) {
                      return "Password missmatches, Try again";
                    }
                  },
                  controller: forgpassc,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          conf_isvisible != conf_isvisible;
                        });
                      },
                      icon: conf_isvisible
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                    ),
                    hintText: "Confirm Password",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
                SizedBox(height: 40),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!
                          .validate()) //while signup clicks it shows the warnings for entering details
                      {
                        register(userc.text, emailc.text, passc.text, context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 60),
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("Sign up"),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Already have and account? ",
                      style: TextStyle(fontSize: 20),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
