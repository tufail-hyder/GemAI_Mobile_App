import 'package:flutter/material.dart';

class TopazDetailScreen extends StatelessWidget {
  const TopazDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Topaz",
          style: TextStyle(
            fontFamily: 'TimesRomanFont',
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, size: 22),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Topaz Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/TopazBg.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),

            // Price Section
            Text(
              "Price",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),
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
                    text: "Retail price for 1 carat Topaz (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Imperial Topaz (Rich Orange/Red): "),
                  TextSpan(text: "\$500 – \$1,500 per carat\n"),
                  TextSpan(text: "• Pink Topaz: "),
                  TextSpan(text: "\$300 – \$700 per carat\n"),
                  TextSpan(text: "• Blue Topaz (Swiss or London Blue): "),
                  TextSpan(text: "\$20 – \$100 per carat\n"),
                  TextSpan(text: "• Other Colors/Low Quality: "),
                  TextSpan(text: "\$5 – \$20 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
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
                    text: "Topaz is graded based on color, clarity, cut, and size:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rich, vivid colors like imperial orange or pink are most \n\t valuable.\n"),
                  TextSpan(text: "• Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones without inclusions are preferred.\n"),
                  TextSpan(text: "• Cut: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Well-cut stones enhance brilliance and sparkle.\n"),
                  TextSpan(text: "• Size/Carat: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Larger stones of good color and clarity are highly valued."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "Topaz is mainly sourced from:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "• Brazil: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Largest producer, especially for imperial orange and pink topaz.\n"),
                  TextSpan(text: "• Russia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for pale blue topaz.\n"),
                  TextSpan(text: "• Pakistan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Produces various colors, including pink and light blue.\n"),
                  TextSpan(text: "• USA (Utah & Texas): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Smaller sources of high-quality stones."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color:Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/orange_glass.png",
              title: "Colored Glass:",
              desc: "Low-cost imitation, lacks hardness and brilliance.\n",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/cubic_zirconia1.png",
              title: "Cubic Zirconia:",
              desc: "Synthetic stone, may resemble topaz in color but softer.",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "• Topaz has been prized since ancient Egypt and Greece.\n"),
                  TextSpan(text: "• Believed to bring protection, strength, and healing.\n"),
                  TextSpan(text: "• Imperial Topaz is considered a symbol of wealth and status.\n"),
                  TextSpan(text: "• Traditionally, blue topaz is associated with love and fidelity."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "• Clean using warm water, mild soap, and soft brush.\n"),
                  TextSpan(text: "• Avoid harsh chemicals and ultrasonic cleaners.\n"),
                  TextSpan(text: "• Store separately to prevent scratches.\n"),
                  TextSpan(text: "• Check gemstone settings regularly."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses
            Text(
              "Uses of Topaz",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "• Jewelry: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rings, pendants, earrings, bracelets.\n"),
                  TextSpan(text: "• Spiritual & Symbolic: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Believed to bring strength, protection, and \n\t healing.\n"),
                  TextSpan(text: "• Collectors & Investment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "High-quality imperial topaz is valuable to \n\t collectors."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying
            Text(
              "Tips for Buying Topaz",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 25, 135, 190),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 16,
                  height: 1.6,
                  fontFamily: 'TimesRomanFont',
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: "• Check Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Vivid colors (imperial orange, pink, or blue) are most \n\t valuable.\n"),
                  TextSpan(text: "• Examine Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred.\n"),
                  TextSpan(text: "• Compare Prices: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Check multiple reputable sellers.\n"),
                  TextSpan(text: "• Certification: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Ask for certification to verify authenticity and treatment \t\n status."),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ------------------ IMITATION ITEM WIDGET ------------------
  Widget imitationItem({
    required String img,
    required String title,
    required String desc,
    double width = 60,
    double height = 60,
  }) {
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
                  text: "$title ",
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
