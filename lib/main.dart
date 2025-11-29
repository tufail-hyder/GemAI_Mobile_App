import 'package:flutter/material.dart';
import 'Screens/Splash.dart';

void main()
{
  runApp(GemAI());
}
class GemAI extends StatelessWidget
{
  const GemAI({super.key});

  @override

  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GemAI',

      home: SplashScreen(),
    );
  }
}


