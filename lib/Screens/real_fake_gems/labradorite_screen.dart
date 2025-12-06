import 'package:flutter/material.dart';

class LabradoriteScreen extends StatelessWidget {
  const LabradoriteScreen({super.key});

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
              "Labradorite",
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
                    image: AssetImage("assets/images/RealvsFake/Labradorite.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Top description
            const Text(
              "Labradorite is a feldspar mineral known for its remarkable play of color, called labradorescence. "
              "It is mostly found in Canada, Finland, Madagascar, and Russia. "
              "Synthetic or imitation stones may look similar but lack the unique iridescent flashes.\n"
              "The main differences between real and fake Labradorite are illustrated in the table below:",
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
                  "Real Labradorite shows a unique iridescence with flashes of blue, green, gold, or orange when rotated under light. ",
              fakeText:
                  "Fake Labradorite lacks the natural iridescent flashes. It may have painted surfaces or plastic imitations.",
              realImage: "assets/images/RealvsFake/labradorite_real.png",
              fakeImage: "assets/images/RealvsFake/labradorite_fake.png",
              containerHeight: 70,
              containerWidth: 100,
            ),
            const SizedBox(height: 5),

            sectionTitle("Color"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real Labradorite exhibits flashes of multiple colors, depending on the angle of light. "
                  "The colors are vibrant and naturally blended.",
              fakeText:
                  "Fake stones usually have flat or painted colors without the play of light effect.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Touch Test"),
            const SizedBox(height: 5),
            realFakeRow(
              realText: "Real Labradorite feels cool and solid to the touch.",
              fakeText:
                  "Fake stones may feel warm or lightweight, especially if made from plastic or resin.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Specific Gravity"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real Labradorite has a specific gravity of 2.68 – 2.72, giving it a noticeable heft in the hand.",
              fakeText:
                  "Fake stones feel unusually light because they are often made from synthetic materials.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Scratch Test"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real Labradorite is relatively hard (6 – 6.5 on Mohs scale) and cannot be easily scratched with a knife.",
              fakeText:
                  "Fake Labradorite made from plastic or glass may scratch easily when pressure is applied.",
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
