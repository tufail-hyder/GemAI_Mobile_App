import 'package:flutter/material.dart';

class CitrineScreen extends StatelessWidget {
  const CitrineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Citrine"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Citrine.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Citrine is light yellow to orange and natural stones have slight variations. "
              "Fake citrine may be heat-treated amethyst or glass.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
