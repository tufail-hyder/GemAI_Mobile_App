import 'package:flutter/material.dart';
import 'Login.dart';

class SplashScreen extends StatefulWidget 
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> 
{
  @override
  void initState() {
    super.initState();
 
    Future.delayed(Duration(seconds: 3), () 
    {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => LoginScreen()),
      );
    }
    );
  }
  @override
Widget build(BuildContext context) 
{
  return Scaffold(
    body: Container(
      // width: double.infinity,
      // height: double.infinity,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage("assets/images/SplashBackground.jpg"),
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Rock Identifier",
              style: TextStyle(fontSize: 34,fontFamily: 'TimesRomanFont', fontWeight: FontWeight.bold,color: Color.fromARGB(255, 180, 139, 84),
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 3,
              color: Colors.black,
            ),
          ],
        ),
      ),
    ),
  );
}
}
