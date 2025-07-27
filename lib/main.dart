import 'package:agri_sense/SplashScreen.dart';
import 'package:agri_sense/loginPage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/dhan.jpg'),
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.white,
        splashIconSize: 200,
        nextScreen: const Loginpage(),
      ),
    );
  }
}