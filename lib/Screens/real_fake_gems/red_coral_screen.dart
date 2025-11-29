import 'package:flutter/material.dart';

class RedCoralScreen extends StatelessWidget {
  const RedCoralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Red Coral"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/RedCoral.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Red Coral has natural pores and color variations. "
              "Fake coral is uniform and plastic-like.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
