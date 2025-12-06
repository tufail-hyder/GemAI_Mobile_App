import 'package:flutter/material.dart';

class EmeraldDetailScreen extends StatelessWidget {
  const EmeraldDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Emerald",
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
            // Emerald Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/EmeraldBg.jpg",
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
                color: Color.fromARGB(255, 0, 128, 0),
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
                    text: "Retail price for 1 carat Emerald (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• High Quality (Deep Green, Eye-clean): "),
                  TextSpan(text: "\$1,000 – \$8,000 per carat\n"),
                  TextSpan(text: "• Medium Quality (Medium Green): "),
                  TextSpan(text: "\$200 – \$1,000 per carat\n"),
                  TextSpan(text: "• Low Quality (Light Green, Visible Inclusions): "),
                  TextSpan(text: "\$50 – \$200 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                    text: "Emerald quality is judged based on color, clarity, cut, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Rich, vivid green is most valuable.\n"),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Slight inclusions are acceptable; eye-clean stones are rare.\n"),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Well-cut emeralds show brightness and maximize color.\n"),
                  TextSpan(
                    text: "• Treatment: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Most emeralds are oiled to enhance clarity; natural untreated stones are more valuable."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                    text: "Major sources of Emerald include:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Colombia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Famous for deep green, high-quality emeralds.\n"),
                  TextSpan(text: "• Zambia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for rich green emeralds with fewer inclusions.\n"),
                  TextSpan(text: "• Brazil: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Produces light to medium green stones.\n"),
                  TextSpan(text: "• Afghanistan & Pakistan: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Smaller sources, unique green tones."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/glass_green.png",
              title: "Green Glass:",
              desc: "Cheap imitation with weaker brilliance, lacking the sparkle and depth of a genuine gem..\n",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/beryl.png",
              title: "Beryl:",
              desc: "Natural stone resembling an emerald, but with a softer, less vivid green.\n",
              width: 55,
              height: 60,
            ),
            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/fluorite.png",
              title: "Fluorite:",
              desc: "Very low-cost imitation, lacking durability and easily scratched.",
              width: 55,
              height: 60,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                  TextSpan(text: "• Emeralds were mined in Egypt as early as 1500 BC.\n"),
                  TextSpan(text: "• Believed to bring foresight, protection, and love.\n"),
                  TextSpan(text: "• Birthstone for May, symbolizing growth, patience, and prosperity.\n"),
                  TextSpan(text: "• Worn by royalty for centuries for prestige and beauty."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                  TextSpan(text: "• Avoid heat and harsh chemicals; emeralds are softer than diamonds.\n"),
                  TextSpan(text: "• Clean gently with mild soap and warm water.\n"),
                  TextSpan(text: "• Store separately to prevent scratches and protect oil treatments."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses of Emeralds
            Text(
              "Uses of Emerald",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                  TextSpan(text: "Rings, necklaces, bracelets, and earrings.\n"),
                  TextSpan(text: "• Healing & Feng Shui: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Promotes emotional balance, prosperity, and protection.\n"),
                  TextSpan(text: "• Collectibles & Investments: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rare, high-quality emeralds are valuable collector items."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying Emeralds
            Text(
              "Tips for Buying Emerald",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 0, 128, 0),
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
                  TextSpan(text: "Deep vivid green is most valuable.\n"),
                  TextSpan(text: "• Look for Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Slight inclusions are acceptable; eye-clean is rare.\n"),
                  TextSpan(text: "• Ask for Treatment Info: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Most emeralds are oiled; untreated stones are more valuable.\n"),
                  TextSpan(text: "• Compare Prices: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Check across reputable jewelers for best value."),
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
