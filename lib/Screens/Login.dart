import 'package:flutter/material.dart';
import 'package:project/Screens/ForgetPassword.dart';
import 'package:project/Screens/PrivacyPolicy.dart';
import 'package:project/Screens/Termsofuse.dart';
import 'package:project/Screens/home.dart';
import 'package:project/Screens/signup.dart';

class LoginScreen extends StatefulWidget 
{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> 
{
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true; // for password visibility

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Text("Rock Identifier",
              style: TextStyle(fontSize: 28,fontFamily: 'TimesRomanFont',fontWeight: FontWeight.bold,),
            ),
            SizedBox(height: 60),

            // Email Field
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email Address",
                labelStyle: TextStyle(fontFamily: 'TimesRomanFont', color: Colors.grey.shade700,
                ),
                prefixIcon: Icon(Icons.email,color: Color(0xFFB48B54)),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 40),

            TextField(
              controller: passwordController,
              obscureText: obscureText,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle( fontFamily: 'TimesRomanFont',color: Colors.grey.shade700,
                ),
                prefixIcon: Icon(Icons.lock,color: Color(0xFFB48B54)),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText ? Icons.visibility : Icons.visibility_off,color: Color(0xFFB48B54)
                  ),
                  onPressed: () 
                  {
                    setState(() 
                    {
                      obscureText = !obscureText;
                    });
                  },
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () 
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (_) => ForgetPasswordScreen()),
                    );
                  },
                  child: Text("Forgot your Password?",
                    style: TextStyle( fontFamily: 'TimesRomanFont', fontSize: 15,color: Color(0xFFB48B54),),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: ()
              {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 180, 139, 84),
                minimumSize: Size(400, 40),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text( "Sign in",
                style: TextStyle(fontFamily: 'TimesRomanFont', fontSize: 18,color: Colors.white,),
              ),
            ),

            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Don’t have an account? ",
                  style: TextStyle( fontFamily: 'TimesRomanFont',fontSize: 16,color: Colors.black, ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => SignupScreen()),
                    );
                  },
                  child: Text("Sign Up",
                    style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 16,color: Color.fromARGB(255, 175, 105, 13),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 160,),
            RichText(
              text: TextSpan(
                style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 14,color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text:"By joining Rock Identifier, you acknowledge that you have \nread and agree to our ",
                  ),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (_) => TermsOfUseScreen()),
                        );
                      },
                      child: Text("Terms of Use",
                        style: TextStyle( color: Color.fromARGB(255, 180, 139, 84),fontFamily: 'TimesRomanFont', ),
                      ),
                    ),
                  ),

                  TextSpan(text: " and "),

                  WidgetSpan(
                    alignment: PlaceholderAlignment.baseline,
                    baseline: TextBaseline.alphabetic,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (_) =>PrivacyPolicyScreen()),
                        );
                      },
                      child: Text("Privacy Policy",
                        style: TextStyle( color: Color.fromARGB(255, 180, 139, 84),fontFamily: 'TimesRomanFont', ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
