import 'package:flutter/material.dart';
import 'package:project/Screens/flutter_auth/Login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final cnicController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscure = true;
  bool obscureConfirm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'TimesRomanFont',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  _textField(
                    controller: fullNameController,
                    icon: Icons.person,
                    label: "Full Name",
                  ),

                  SizedBox(height: 10),

                  _textField(
                    controller: phoneController,
                    icon: Icons.phone,
                    label: "Phone Number",
                    type: TextInputType.phone,
                  ),

                  SizedBox(height: 10),

                  _textField(
                    controller: cnicController,
                    icon: Icons.credit_card,
                    label: "CNIC Number",
                    type: TextInputType.number,
                  ),

                  SizedBox(height: 10),

                  _textField(
                    controller: emailController,
                    icon: Icons.email,
                    label: "Email Address",
                  ),

                  SizedBox(height: 10),

                  TextField(
                    controller: passwordController,
                    obscureText: obscure,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'TimesRomanFont',
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(Icons.lock, color: Color(0xFFB48B54)),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscure ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFFB48B54),
                        ),
                        onPressed: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  TextField(
                    controller: confirmPasswordController,
                    obscureText: obscureConfirm,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'TimesRomanFont',
                        color: Colors.grey.shade700,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xFFB48B54),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          obscureConfirm
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFFB48B54),
                        ),
                        onPressed: () {
                          setState(() {
                            obscureConfirm = !obscureConfirm;
                          });
                        },
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFB48B54),
                        minimumSize: Size(380, 45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'TimesRomanFont',
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            fontFamily: 'TimesRomanFont',
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (_) => LoginScreen()),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              fontFamily: 'TimesRomanFont',
                              fontSize: 16,
                              color: Color(0xFFB48B54),
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
        ),
      ),
    );
  }

  Widget _textField({
    required TextEditingController controller,
    required IconData icon,
    required String label,
    TextInputType type = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          fontFamily: 'TimesRomanFont',
          fontSize: 14,
          color: Colors.grey.shade700,
        ),
        prefixIcon: Icon(icon, color: Color(0xFFB48B54)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
