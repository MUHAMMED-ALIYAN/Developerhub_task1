import 'package:flutter/material.dart';
import 'package:ui_project/auth/loginscreen.dart';
import 'package:ui_project/auth/signup.dart';
// Assuming you have a login screen too

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 207, 132, 226),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 800,

                  width: 450,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 248, 248),
                    // borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                      children: [
                        // Tab buttons (Login and Sign Up)
                        Container(
                          margin: EdgeInsets.all(16),
                          height: 100,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 207, 132, 226),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: TabBar(
                              indicator: BoxDecoration(
                                color: const Color.fromARGB(255, 241, 239, 241),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.purple.withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 8,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              tabs: [
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 8,
                                      right: 8,
                                    ),
                                    child: Text(
                                      "SIGNUP",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Tab content
                        Expanded(
                          child: TabBarView(
                            children: [Loginscreen(), SignUpScreen()],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
