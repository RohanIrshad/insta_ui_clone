import 'dart:async';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EasySplashScreen(
        logo: Image.asset(
          'assets/images/insta_logo.png',
          scale: 20,
        ),
        title: Text(
          'Welcome to Instagram',
          style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        showLoader: false,
        durationInSeconds: 4,
        navigator: HomeScreen(),
      ),
    );
  }
}
