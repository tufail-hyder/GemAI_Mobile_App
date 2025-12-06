import 'package:flutter/material.dart';

class PeridotDetailScreen extends StatelessWidget {
  const PeridotDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 227, 227),
        title: const Text(
          "Peridot",
          style: TextStyle(
            fontFamily: 'TimesRomanFont',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 22),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Peridot Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/peridot_bg.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(height: 16),

            // Price Section
            const Text(
              "Price",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 6),

           RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Retail price per carat (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Deep Green (High Quality): "),
                  TextSpan(text: "\$40 – \$120 per carat\n"),
                  TextSpan(text: "• Medium Green: "),
                  TextSpan(text: "\$15 – \$40 per carat\n"),
                  TextSpan(text: "• Light / Yellowish Green: "),
                  TextSpan(text: "\$5 – \$15 per carat"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Quality Section
            const Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 8),

            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  height: 1.6,
                  fontSize: 16,
                  fontFamily: 'TimesRomanFont',
                ),
                children: [
                  TextSpan(
                    text: "Peridot is graded based on color, clarity, and cut:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Pure lime-green stones are the most valuable.\n",
                  ),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Look for eye-clean Peridot with minimal black spots.\n",
                  ),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Good cutting increases brilliance and hides inclusions.\n",
                  ),
                  TextSpan(
                    text: "• Size: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Large Peridot above 5 carats are rarer and pricier.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Origin Section
            const Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 8),

           RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    height: 1.6,
                    fontSize: 16,
                    fontFamily: 'TimesRomanFont'),
                children: [
                  TextSpan(
                      text: "Peridot is mainly mined from:\n",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: "• Pakistan (Kohistan): ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "World-famous for vibrant green stones.\n"),
                  TextSpan(
                      text: "• Myanmar: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Highly valued fine-quality Peridot.\n"),
                  TextSpan(
                      text: "• China: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Largest global supplier.\n"),
                  TextSpan(
                      text: "• USA (Arizona): ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for warm yellowish-green stones."),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Imitation Section
            const Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 8),

            imitationRow(
              "assets/images/peridot_glass.png",
              "Green Glass: ",
              "Most common imitation; softer, less brilliance, and very inexpensive.",
              width: 40,
              height: 55,
            ),

            const SizedBox(height: 12),

            imitationRow(
              "assets/images/peridot_quartz.png",
              "Dyed Quartz: ",
              "Lower-quality quartz is dyed to mimic Peridot’s green color.",
              width: 40,
              height: 55,
            ),

            const SizedBox(height: 12),

            imitationRow(
              "assets/images/peridot_synthetic.png",
              "Synthetic Olivine\n",
              "Lab-grown material resembling Peridot but cheaper.",
              width: 40,
              height: 55,
            ),

            const SizedBox(height: 20),

            // History
            const Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 6),

            RichText(
              text: TextSpan(
                style: TextStyle(
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text:
                        "• Ancient Egyptians called Peridot the “Gem of the Sun”.\n",
                  ),
                  TextSpan(
                    text:
                        "• Believed to bring protection, harmony, and good health.\n",
                  ),
                  TextSpan(
                    text: "• Peridot is the birthstone for August.",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Care Section
            const Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 6),

            RichText(
              text: TextSpan(
                style: TextStyle(
                    height: 1.6,
                    fontFamily: 'TimesRomanFont',
                    fontSize: 16,
                    color: Colors.black),
                children: [
                  TextSpan(
                      text:
                          "• Avoid heat: High temperature can cause cracks.\n"),
                  TextSpan(
                      text:
                          "• Clean with mild soap and lukewarm water.\n"),
                  TextSpan(
                      text:
                          "• Store separately—Peridot scratches easily (6.5–7 Mohs)."),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Uses Section
            const Text(
              "Uses of Peridot",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            const SizedBox(height: 6),

             RichText(
              text: TextSpan(
                style: TextStyle(
                    height: 1.6,
                    fontFamily: 'TimesRomanFont',
                    fontSize: 16,
                    color: Colors.black),
                children: [
                  TextSpan(text: "• Jewelry: Rings, pendants, earrings.\n"),
                  TextSpan(text: "• Healing: Believed to remove negative energy.\n"),
                  TextSpan(
                      text: "• Collectibles: Beautiful crystal clusters from Pakistan."),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

   Widget imitationRow(String img, String title, String desc,
      {double width = 60, double height = 60}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            img,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                fontFamily: 'TimesRomanFont',
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: desc),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
