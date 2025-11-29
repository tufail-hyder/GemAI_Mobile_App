import 'package:flutter/material.dart';

class AmethystScreen extends StatelessWidget {
  const AmethystScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amethyst"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Amethyst.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Amethyst has rich color and may have slight color zoning. "
              "Fake amethyst can be overly uniform or glassy.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
