import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/screens/authScreens/intro_screen.dart';
import 'package:travel_app/screens/authScreens/login_screen.dart';
import 'package:travel_app/screens/start/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/introScreen': (context) => const IntroScreen(),
        '/LoginScreen': (context) => const LoginScreen()
      },
    );
  }
}
