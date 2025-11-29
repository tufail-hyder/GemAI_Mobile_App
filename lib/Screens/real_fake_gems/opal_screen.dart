import 'package:flutter/material.dart';

class OpalScreen extends StatelessWidget {
  const OpalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opal"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Opal.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Opals show flashes of color that change with angle. "
              "Fake Opals have uniform patterns and no play of color.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
