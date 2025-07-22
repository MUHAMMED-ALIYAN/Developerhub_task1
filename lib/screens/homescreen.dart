import 'package:flutter/material.dart';
import 'package:ui_project/widgets/custom_btns.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF5EBF7),
        appBar: AppBar(
          backgroundColor: const Color(0xFFD8B4E2),

          centerTitle: true,
          title: const Text(
            'Home Screen',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9C27B0),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: const Text(
                  'This is your new modern home screen in a soft purple theme. You can customize it further as needed.',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              const SizedBox(height: 40),
              CustomElevatedButton(
                text: "signup".toUpperCase(),
                onPressed: () {},

                backgroundColor: const Color.fromARGB(255, 207, 132, 226),
                foregroundColor: Colors.white,
                elevation: 15,
                borderRadius: 20,
                width: double.infinity,
                height: 65,
                textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
