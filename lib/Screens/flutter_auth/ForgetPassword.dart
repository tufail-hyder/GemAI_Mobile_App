import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final emailController = TextEditingController();

  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 236, 227),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Icon(Icons.lock_reset_rounded,size: 80,color: Color(0xFFB48B54),
                ),

                SizedBox(height: 20),

                Text( "Forgot Password?",
                  style: TextStyle(fontSize: 30,fontFamily: 'TimesRomanFont',fontWeight: FontWeight.bold,color: Colors.black87,),
                ),

                SizedBox(height: 10),

                Text("Don’t worry, we’ll help you reset it.\nJust enter your email below.",
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 15,fontFamily: 'TimesRomanFont', color: Colors.black87,),
                ),

                SizedBox(height: 35),

                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration( color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 12,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Column(
                    children: [

                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email Address",
                          labelStyle: TextStyle(
                            fontFamily: 'TimesRomanFont',
                            color: Colors.grey.shade700,
                          ),
                          prefixIcon: Icon(Icons.email, color: Color(0xFFB48B54)),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFB48B54)),
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      SizedBox(
                        width: 400,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB48B54),
                            padding: EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 3,
                          ),
                          child: Text("Send Reset Link",
                            style: TextStyle(fontFamily: 'TimesRomanFont',fontSize: 17,color: Colors.white,),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 10),

                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text( "Back to Login",
                    style: TextStyle(fontFamily: 'TimesRomanFont', fontSize: 18, color: Color(0xFFB48B54),fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
