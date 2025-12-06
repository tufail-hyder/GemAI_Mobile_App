import 'package:flutter/material.dart';

class AmethystScreen extends StatelessWidget {
  const AmethystScreen({super.key});

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
              "Amethyst",
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
                    image: AssetImage("assets/images/RealvsFake/Amethyst.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Top description
            const Text(
              "Amethyst is a violet variety of quartz, often used in jewelry. "
              "Its color ranges from light lavender to deep purple. Many amethysts in the market are natural, but some are heat-treated to enhance color. "
              "The main differences between real and fake amethyst are illustrated below:",
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
                  "Real amethyst has a uniform purple color with subtle color zoning and natural inclusions.",
              fakeText:
                  "Fake amethyst may be glass, synthetic quartz, or dyed stones, often with uneven color or bubbles.",
              realImage: "assets/images/RealvsFake/amethyst_real.png",
              fakeImage: "assets/images/RealvsFake/amethyst_fake.png",
              containerHeight: 70,
              containerWidth: 100,
            ),
            const SizedBox(height: 5),

            sectionTitle("Color"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Amethyst's purple ranges from pale lilac to deep violet. Natural stones may have slight color zoning.",
              fakeText:
                  "Fake amethyst often has overly bright or uneven purple or violet shades, sometimes looking unnatural.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Hardness & Feel"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real amethyst is hard (Mohs 7), smooth, and cold to the touch. Durable for jewelry use.",
              fakeText:
                  "Fake amethyst made of glass or plastic may feel lighter, warmer, or softer than natural stones.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Specific Gravity"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real amethyst is heavier due to its natural density compared to glass or resin imitations.",
              fakeText:
                  "Fake amethyst made from plastic or glass feels lighter and less dense.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Clarity & Inclusions"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Natural amethyst may have minor inclusions visible under magnification but retains clarity.",
              fakeText:
                  "Fake stones may have bubbles, cloudiness, or streaks indicating artificial origin.",
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
                  Text(
                    "Real",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
                  Text(
                    "Fake",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
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
