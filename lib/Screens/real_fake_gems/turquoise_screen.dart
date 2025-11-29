import 'package:flutter/material.dart';

class TurquoiseScreen extends StatelessWidget {
  const TurquoiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Turquoise"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Turquoise.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Turquoise has natural veins and color variation. "
              "Fake turquoise is often dyed or uniform.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
