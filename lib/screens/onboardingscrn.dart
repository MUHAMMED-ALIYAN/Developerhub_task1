import 'package:flutter/material.dart';

import 'package:ui_project/screens/tabbar_screen.dart';

import 'package:ui_project/widgets/custom_btns.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController pageController = PageController();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //appBar: CustomAppBar(title: "onboarding"),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                text: currentindex == 2 ? "SKIP" : "",

                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 211, 62, 211),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TabbarScreen()),
                  );
                },
              ),
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  currentindex = value;
                  setState(() {});
                },
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/onb1.png",
                          fit: BoxFit.fill,
                        ),
                     
                      Text(
                        "FRESH FOOD",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 182, 72, 192),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/onb2.png",
                          fit: BoxFit.fill,
                        ),
                     
                      Text(
                        "FAST DELIVERY",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 182, 72, 192),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          "assets/images/onb3.png",
                          fit: BoxFit.fill,
                        ),
                     
                      SizedBox(height: 20),
                      Text(
                        "EASY PAYMENT",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 182, 72, 192),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: List.generate(
                3,
                (index) => Container(
                  width: currentindex == index ? 40 : 20,
                  height: currentindex == index ? 40 : 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: currentindex == index
                        ? const Color.fromARGB(255, 221, 78, 247)
                        : Colors.grey,
                  ),
                ),
              ),
            ),SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
