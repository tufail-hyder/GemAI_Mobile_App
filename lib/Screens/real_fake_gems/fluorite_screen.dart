import 'package:flutter/material.dart';

class FluoriteScreen extends StatelessWidget {
  const FluoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluorite"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Fluorite.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Fluorite has natural banding and a glassy luster. "
              "Fake fluorite may be synthetic glass or plastic.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
