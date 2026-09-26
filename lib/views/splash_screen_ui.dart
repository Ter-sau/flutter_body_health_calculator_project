// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'home_ui.dart'; 

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => __SplashScreenUIState();
}

class __SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeUI(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD63D13), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              'assets/images/calculate.png', 
              width: MediaQuery.of(context).size.height * 0.18,
              height: MediaQuery.of(context).size.height * 0.18,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 30.0
            ),
            Text(
              'Body Health Calculator',
              style: TextStyle(
                color: Colors.white, 
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
