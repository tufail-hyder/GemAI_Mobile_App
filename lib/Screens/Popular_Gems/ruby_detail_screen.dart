import 'package:flutter/material.dart';

class RubyDetailScreen extends StatelessWidget {
  const RubyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Ruby",
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
            // Ruby Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/RubyBg.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),

            // Price Section
            Text(
              "Price",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                    text: "Retail price for 1 carat Ruby (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality (Pigeon Blood, Eye-clean): "),
                  TextSpan(text: "\$8,000 – \$15,000 per carat\n"),
                  TextSpan(text: "• Very Good Quality (Red, Slight Inclusions): "),
                  TextSpan(text: "\$1,500 – \$8,000 per carat\n"),
                  TextSpan(text: "• Medium Quality (Pinkish, Visible Inclusions): "),
                  TextSpan(text: "\$300 – \$1,500 per carat\n"),
                  TextSpan(text: "• Low Quality (Dark/Brick Red, Heavy Inclusions): "),
                  TextSpan(text: "\$50 – \$300 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                    text: "Rubies are valued based on color, clarity, cut, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Bright, vivid red (pigeon blood red) is most valuable.\n"),
                  TextSpan(text: "• Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Slight inclusions are normal; eye-clean stones are rare.\n"),
                  TextSpan(text: "• Cut: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Well-cut rubies show maximum color and brilliance.\n"),
                  TextSpan(text: "• Treatment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Most rubies are heat-treated to improve color; untreated stones are more valuable."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                  TextSpan(text: "Major sources of Ruby include:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "• Myanmar (Burma): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Famous for pigeon blood rubies, highly prized.\n"),
                  TextSpan(text: "• Thailand: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for deep red rubies, often heat-treated.\n"),
                  TextSpan(text: "• Sri Lanka: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Produces lighter red rubies, excellent clarity.\n"),
                  TextSpan(text: "• Mozambique & Madagascar: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Newer sources with high-quality rubies."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 199, 35, 23),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/glass_red.png",
              title: "Red Glass:",
              desc: "Low-cost imitation with weaker brilliance, unable to match the sparkle of a genuine gem.\n",
              width: 60,
              height: 70,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/zircon_red.png",
              title: "Red Zircon:",
              desc: "Natural gemstone resembling a ruby, but with a softer, less vivid red.\n",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/spinel.png",
              title: "Spinel:",
              desc: "Natural stone often confused with a ruby, but slightly softer in hardness.",
              width: 55,
              height: 60,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                  TextSpan(text: "• Rubies have been treasured for thousands of years, often called the 'King of Gems'.\n"),
                  TextSpan(text: "• Believed to bring passion, protection, and prosperity.\n"),
                  TextSpan(text: "• Worn by royalty and warriors to signify power and courage.\n"),
                  TextSpan(text: "• Birthstone for July, symbolizing love, energy, and vitality."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                  TextSpan(text: "• Clean with warm water and mild soap; avoid harsh chemicals.\n"),
                  TextSpan(text: "• Store separately to prevent scratches.\n"),
                  TextSpan(text: "• Check settings periodically to avoid loose stones."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses
            Text(
              "Uses of Ruby",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                  TextSpan(text: "Rings, necklaces, earrings, bracelets.\n"),
                  TextSpan(text: "• Symbolic & Spiritual: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Represents love, courage, and energy.\n"),
                  TextSpan(text: "• Investment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "High-quality rubies are valuable collector gems."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying
            Text(
              "Tips for Buying Ruby",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 199, 35, 23),
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
                  TextSpan(text: "• Check the Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Pigeon blood red is most valuable.\n"),
                  TextSpan(text: "• Examine Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Slight inclusions are normal; eye-clean stones are rare.\n"),
                  TextSpan(text: "• Ask About Heat Treatment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Untreated rubies are more valuable.\n"),
                  TextSpan(text: "• Compare Prices: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Check multiple reputable jewelers for fair value."),
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
