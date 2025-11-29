import 'package:flutter/material.dart';

class DiamondScreen extends StatelessWidget {
  const DiamondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Diamond"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Diamond.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real diamonds have high sparkle, are very hard, and conduct heat. "
              "Fake diamonds like cubic zirconia may lack brilliance or feel warm.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
