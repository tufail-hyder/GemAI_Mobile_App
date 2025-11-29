import 'package:flutter/material.dart';

class LabradoriteScreen extends StatelessWidget {
  const LabradoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Labradorite"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Labradorite.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Labradorite shows iridescent flashes of color called labradorescence. "
              "Fake ones are usually dull and lack shimmer.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
