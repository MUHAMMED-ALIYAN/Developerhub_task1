// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:ui_project/screens/homescreen.dart';
import 'package:ui_project/widgets/custom_btns.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showPassword = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  RegExp regpassword = RegExp(
    '^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%&\*])(?=.{8,})',
  );

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Form(
          key: formState,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/images/sign.png"),
                ),
                SizedBox(height: 50),

                Container(
                  // margin: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      }

                      return null;
                    },
                    controller: name,

                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "NAME",
                      hintText: "Enter Your Name",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 182, 175, 175),
                        // fontSize: 30
                      ),

                      prefixIcon: Icon(
                        Icons.type_specimen,
                        size: 30,
                        color: const Color.fromARGB(255, 183, 109, 226),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      } else if (!emailRegex.hasMatch(value)) {
                        return "enter valid email";
                      }
                      return null;
                    },
                    controller: email,

                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "EMAIL",
                      hintText: "Enter Your Email",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 182, 175, 175),
                        // fontSize: 30
                      ),

                      prefixIcon: Icon(
                        Icons.email,
                        size: 30,
                        color: const Color.fromARGB(255, 183, 109, 226),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.all(10),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Required";
                      } else if (value.length < 8) {
                        return "password must contain 8 characters";
                      }
                      return null;
                    },
                    controller: password,
                    obscureText: showPassword,

                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "PASSWORD",
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 182, 175, 175),
                        // fontSize: 30
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          showPassword = !showPassword;
                          setState(() {});
                        },
                        child: Icon(Icons.remove_red_eye),
                      ),

                      prefixIcon: Icon(
                        Icons.password_outlined,
                        size: 30,
                        color: const Color.fromARGB(255, 183, 109, 226),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 2,
                          color: const Color.fromARGB(255, 207, 132, 226),
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                CustomElevatedButton(
                  text: "signup".toUpperCase(),
                  onPressed: () {
                    if (formState.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    } else {}
                  },
                  backgroundColor: const Color.fromARGB(255, 207, 132, 226),
                  foregroundColor: Colors.white,
                  elevation: 15,
                  borderRadius: 20,
                  width: double.infinity,
                  height: 65,
                  textStyle: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login with",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 55,
                      width: 60,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        image: DecorationImage(
                          image: AssetImage("assets/images/fl.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 55,
                      width: 60,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color.fromARGB(255, 255, 255, 255),
                        image: DecorationImage(
                          image: AssetImage("assets/images/gl.png"),
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
