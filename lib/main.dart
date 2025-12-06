import 'package:flutter/material.dart';
import 'Screens/Main Screens/Splash.dart';

void main() {
  runApp(const GemAI());
}

class GemAI extends StatelessWidget {
  const GemAI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GemAI',
      home: const SplashScreen(),  
    );
  }
}
