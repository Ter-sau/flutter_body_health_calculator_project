// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_body_health_calculator_project/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
     FLutterBodyHealthcalculatorProject(),
  );
}

class FLutterBodyHealthcalculatorProject extends StatefulWidget {
  const FLutterBodyHealthcalculatorProject({super.key});

  @override
  State<FLutterBodyHealthcalculatorProject> createState() => _FLutterBodyHealthcalculatorProjectState();
}

class _FLutterBodyHealthcalculatorProjectState extends State<FLutterBodyHealthcalculatorProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}