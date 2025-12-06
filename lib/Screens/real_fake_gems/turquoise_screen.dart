import 'package:flutter/material.dart';

class TurquoiseScreen extends StatelessWidget {
  const TurquoiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 22),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // RichText title
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "Real \t"),
                  TextSpan(
                    text: "V",
                    style: TextStyle(
                      color: Color.fromARGB(255, 235, 145, 11),
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: "S",
                    style: TextStyle(
                      color: Color.fromARGB(255, 219, 37, 24),
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(text: "\t Fake"),
                ],
              ),
            ),
            const SizedBox(height: 6),

            const Text(
              "Turquoise",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 10),

            // Stone Image
            Center(
              child: Container(
                height: 140,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/RealvsFake/Turquoise.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Top description
            const Text(
              "Turquoise is a hydrated phosphate of copper and aluminum, prized for its blue to green hues. "
              "It has been used for centuries in jewelry and ornaments. Natural turquoise may have veins or matrix patterns, "
              "while synthetic or fake turquoise is often uniform in color and lacks natural inclusions.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 20),

            // Sections
            sectionTitle("Overview"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real turquoise has natural veins (matrix), slight color variations, and a soft texture when polished.",
              fakeText:
                  "Fake turquoise is often dyed plastic or howlite, with uniform color and smooth, unnatural texture.",
              realImage: "assets/images/RealvsFake/turquoise_real.png",
              fakeImage: "assets/images/RealvsFake/turquoise_fake.png",
              containerHeight: 70,
              containerWidth: 100,
            ),
            const SizedBox(height: 5),

            sectionTitle("Color & Patterns"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real turquoise displays shades from sky blue to green with natural matrix patterns across the stone.",
              fakeText:
                  "Imitations are often solid bright blue or green with no natural patterns.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Hardness & Durability"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Turquoise has moderate hardness (Mohs 5-6), making it suitable for jewelry with proper care.",
              fakeText:
                  "Fake stones made of resin or dyed materials are soft and scratch easily.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Weight & Feel"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real turquoise has natural heft and feels cool to the touch.",
              fakeText:
                  "Fake turquoise feels unusually light and may not have the cool feel of genuine stone.",
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Section title
  Widget sectionTitle(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'TimesRomanFont',
          ),
        ),
      ),
    );
  }

  // Real vs Fake row
  Widget realFakeRow({
    required String realText,
    required String fakeText,
    String? realImage,
    String? fakeImage,
    double containerHeight = 100,
    double containerWidth = double.infinity,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 2, bottom: 11),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 230, 204),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Real",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 247, 164, 41),
                      fontSize: 18,
                      fontFamily: 'TimesRomanFont',
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    realText,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'TimesRomanFont',
                    ),
                  ),
                  if (realImage != null) ...[
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        realImage,
                        height: containerHeight,
                        width: containerWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(left: 2, bottom: 12),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 214, 217),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Fake",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18,
                      fontFamily: 'TimesRomanFont',
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    fakeText,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontFamily: 'TimesRomanFont',
                    ),
                  ),
                  if (fakeImage != null) ...[
                    const SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        fakeImage,
                        height: containerHeight,
                        width: containerWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
