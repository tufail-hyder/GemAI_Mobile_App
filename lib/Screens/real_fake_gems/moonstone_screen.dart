import 'package:flutter/material.dart';

class MoonstoneScreen extends StatelessWidget {
  const MoonstoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moonstone"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Moonstone.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Moonstone shows adularescence, a glowing light inside. "
              "Fake Moonstone may appear flat or painted.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
