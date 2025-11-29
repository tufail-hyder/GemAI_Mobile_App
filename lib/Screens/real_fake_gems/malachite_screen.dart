import 'package:flutter/material.dart';

class MalachiteScreen extends StatelessWidget {
  const MalachiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Malachite"),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Malachite.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Malachite has natural banding and color patterns. "
              "Fake Malachite is usually painted or uniform.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
