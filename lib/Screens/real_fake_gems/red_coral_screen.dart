import 'package:flutter/material.dart';

class RedCoralScreen extends StatelessWidget {
  const RedCoralScreen({super.key});

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
              "Red Coral",
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
                    image: AssetImage("assets/images/RealvsFake/RedCoral.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Top description
            const Text(
              "Red coral is an organic gemstone formed by marine coral species. "
              "It is highly valued for its vibrant red color and natural beauty. "
              "Natural red coral exhibits slight variations in color and surface texture, while fake corals are often uniform and made from dyed materials.",
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
                  "Real red coral is naturally formed, with unique patterns, slight surface irregularities, and vibrant red shades.",
              fakeText:
                  "Fake red coral is often made from dyed plastic or resin, with uniform shape, smooth surface, and artificial color.",
              realImage: "assets/images/RealvsFake/redcoral_real.png",
              fakeImage: "assets/images/RealvsFake/redcoral_fake.png",
              containerHeight: 70,
              containerWidth: 100,
            ),
            const SizedBox(height: 5),

            sectionTitle("Color & Texture"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Natural red coral has deep red hues with slight color variations and subtle texture on the surface.",
              fakeText:
                  "Imitations may appear too bright or uniform and feel smooth to touch.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Hardness & Durability"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Red coral is relatively hard and durable, suitable for jewelry making.",
              fakeText:
                  "Fake coral made from resin or plastic scratches easily and may not withstand prolonged wear.",
            ),
            const SizedBox(height: 5),

            sectionTitle("Weight & Feel"),
            const SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real red coral feels heavier due to its density and natural composition.",
              fakeText:
                  "Fake coral is usually very light and lacks the natural heft of real coral.",
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
