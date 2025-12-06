import 'package:flutter/material.dart';
import 'package:project/Screens/flutter_auth/ForgetPassword.dart';
import 'package:project/Screens/Main Screens/Termsofuse.dart';
import 'package:project/Screens/Main Screens/PrivacyPolicy.dart';
import 'package:project/Screens/Main Screens/Home.dart';
import 'package:project/Screens/flutter_auth/Signup.dart';

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
  bool obscureText = true; 

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      appBar: AppBar(
      leading: IconButton(
      onPressed: ()
       {
      Navigator.pop(context);   
       },
      icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20,bottom: 10),
        child: Column(
          children: [
            Text("Gems Detection",
              style: TextStyle(fontSize: 24,fontFamily: 'TimesRomanFont',fontWeight: FontWeight.bold, color:  Color(0xFFB48B54)),
            ),
            SizedBox(height: 40),

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
                    style: TextStyle( fontFamily: 'TimesRomanFont', fontSize: 14,color: Color(0xFFB48B54),),
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
                  style: TextStyle( fontFamily: 'TimesRomanFont',fontSize: 14,color: Colors.black, ),
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
            Spacer(),
           RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      
                      style: TextStyle(
                        fontFamily: 'TimesRomanFont',
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                      children: [
                        TextSpan(
                            text:
                                "By joining Rock Identifier, you acknowledge that you have read and agree to our "),
                        WidgetSpan(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => TermsOfUseScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Terms of Use",
                              style: TextStyle(
                                color: Color(0xFFB48B54),
                                fontFamily: 'TimesRomanFont',
                                fontSize: 12
                              ),
                            ),
                          ),
                        ),
                        TextSpan(text: " and "),
                        WidgetSpan(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => PrivacyPolicyScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Privacy Policy",
                              style: TextStyle(
                                color: Color(0xFFB48B54),fontFamily: 'TimesRomanFont',
                                fontSize: 12
                              ),
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
