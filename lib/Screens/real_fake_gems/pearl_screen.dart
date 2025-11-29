import 'package:flutter/material.dart';

class PearlScreen extends StatelessWidget {
  const PearlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pearl"),
        backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Pearl.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real pearls have slight imperfections and feel gritty when rubbed against teeth. "
              "Fake pearls are perfectly smooth and lightweight.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
