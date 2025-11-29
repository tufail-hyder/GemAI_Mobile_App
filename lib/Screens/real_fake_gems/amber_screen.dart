import 'package:flutter/material.dart';

class AmberScreen extends StatelessWidget {
  const AmberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amber"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/Amber.png", height: 200),
            const SizedBox(height: 20),
            const Text(
              "Real Amber may contain inclusions and is lightweight. "
              "Fake amber can be plastic or resin.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
