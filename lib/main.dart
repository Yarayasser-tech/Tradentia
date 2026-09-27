import 'package:flutter/material.dart';
import 'package:tradentia/screens/login_screen.dart';

void main() {
  runApp(const Tradentia());
}

class Tradentia extends StatelessWidget {
  const Tradentia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',

      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const LoginScreen(),

    );
  }
}

