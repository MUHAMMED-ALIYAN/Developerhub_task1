import 'package:flutter/material.dart';
import 'package:ui_project/screens/onboardingscrn.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
void initState() {
  super.initState();
  Future.delayed(Duration(seconds: 2), () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => onboarding()),
    );
  });
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 00),
                child: Container(
                  // height: 500,
                  // width: 500,
                  child: Image.asset(
                    "assets/images/bike.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 9),
              Text(
                "WELCOME",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
