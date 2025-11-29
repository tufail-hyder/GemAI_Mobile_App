import 'package:flutter/material.dart';
import 'package:project/Screens/PrivacyPolicy.dart';
import 'package:project/Screens/Termsofuse.dart';
import 'package:project/Screens/login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});


  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final cnicController = TextEditingController();
  final addressController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscure = true;
  bool obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Create Your Account",
                style: TextStyle(fontSize: 28,fontFamily: 'TimesRomanFont',fontWeight: FontWeight.bold),
              ),

              SizedBox(height:10),

              TextField(
                controller: fullNameController,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.person,color: Color(0xFFB48B54)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.phone,color: Color(0xFFB48B54)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: cnicController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "CNIC Number",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.credit_card,color: Color(0xFFB48B54)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.email,color: Color(0xFFB48B54)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: passwordController,
                obscureText: obscure,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.lock,color: Color(0xFFB48B54)),
                  suffixIcon: IconButton(
                    icon: Icon(
                        obscure ? Icons.visibility : Icons.visibility_off,color: Color(0xFFB48B54)),
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
              SizedBox(height: 10),

              TextField(
                controller: confirmPasswordController,
                obscureText: obscureConfirm,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(fontFamily: 'TimesRomanFont',color: Colors.grey.shade700),
                  prefixIcon: Icon(Icons.lock_outline,color: Color(0xFFB48B54)),
                  suffixIcon: IconButton(
                    icon: Icon(obscureConfirm
                        ? Icons.visibility
                        : Icons.visibility_off),color: Color(0xFFB48B54),
                    onPressed: () {
                      setState(() {
                        obscureConfirm = !obscureConfirm;
                      });
                    },
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),

              SizedBox(height: 30),

             ElevatedButton(
              onPressed: ()
              {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 180, 139, 84),
                minimumSize: Size(380, 40),
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text( "Sign up",
                style: TextStyle(fontFamily: 'TimesRomanFont', fontSize: 18,color: Colors.white,),
              ),
            ),
             SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Already hava an account? ",
                  style: TextStyle( fontFamily: 'TimesRomanFont',fontSize: 16,color: Colors.black, ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) => LoginScreen()),
                    );
                  },
                  child: Text("Sign in",
                    style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 16,color: Color.fromARGB(255, 175, 105, 13),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 60,),
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
                        Navigator.push(context,MaterialPageRoute(builder: (_) => PrivacyPolicyScreen()),
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
      ),
    );
  }
}
