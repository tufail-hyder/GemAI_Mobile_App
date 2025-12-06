import 'package:flutter/material.dart';

class MalachiteScreen extends StatelessWidget {
  const MalachiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22),
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
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  const TextSpan(text: "Real \t"),
                  TextSpan(
                    text: "V",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 235, 145, 11),
                      fontSize: 24,
                    ),
                  ),
                  TextSpan(
                    text: "S",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 219, 37, 24),
                      fontSize: 24,
                    ),
                  ),
                  const TextSpan(text: "\t Fake"),
                ],
              ),
            ),
            const SizedBox(height: 6),

            const Text(
              "Malachite",
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
                    image: AssetImage("assets/images/RealvsFake/Malachite.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),

            // Top description
            const Text(
              "A copper carbonate hydroxide mineral, malachite is well known for its distinctive green shading, which renders it an attractive carving material. It has been mined in modern day Great Britain and Israel for over three thousand years. Until 1800, it was used as a pigment in green paints.\nPlastic, resin or clay can be shaped and dyed like polished malachite (these materials are not stone).\nThe main differences between real and fake Malachite are illustrated in the table below:",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 20),

            // Sections
            sectionTitle("Overview"),
            SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real malachite comes in a range of greens from light to dark, but not black.",
              fakeText:
                  "Plastic, resin or clay stone can be shaped and dyed like polished malachite.",
              realImage: "assets/images/RealvsFake/malachite_real.png",
              fakeImage: "assets/images/RealvsFake/malachite_fake.png",
              containerHeight: 70,
              containerWidth: 100, 
            ),
            SizedBox(height: 5),

            sectionTitle("Color"),
            SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real malachite has a surprising amount of green. Unique patterns of swirls, rings, waves and stripes are distributed throughout the stone face.",
              fakeText: "Rough black lines and uniform linear patterns.",
            ),
            SizedBox(height: 5),
            sectionTitle("Touch Test"),
            SizedBox(height: 5),
            realFakeRow(
              realText: "Cold to the touch for real malachite.",
              fakeText:
                  "Warm to the touch in the case of plastic stones. Cold to the touch in the case of glass but for the first second only.",
            ),
            SizedBox(height: 5),
            sectionTitle("Specific Gravity"),
            SizedBox(height: 5),
            realFakeRow(
              realText:
                  "Real malachite is heavy due to its high copper content (3.6 – 4.0 SG). This density makes it noticeably heavier than many fake imitations made from plastic, resin, or clay.",
              fakeText:
                  "Fake malachite is usually very light because it is made from plastic, resin, or clay. It lacks the natural copper content and density of real malachite.",
            ),
            SizedBox(height: 5),
            sectionTitle("Acid Test"),
            SizedBox(height: 5),
            realFakeRow(
              realText:
                  "If you place a drop of hydrochloric acid on powdered malachite, a visible fizz will occur",
              fakeText:
                  "Imitations created from plastic or glass won't produce a fizz with a drop of hydrochloric acid.",
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
                        width: containerWidth, // <-- applied width
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
