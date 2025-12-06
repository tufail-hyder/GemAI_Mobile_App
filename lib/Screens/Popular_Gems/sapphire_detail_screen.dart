import 'package:flutter/material.dart';

class SapphireDetailScreen extends StatelessWidget {
  const SapphireDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Sapphire",
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
            // Sapphire Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/SapphireBg.jpg",
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
                color: Colors.blue,
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
                    text: "Retail price for 1 carat Sapphire (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality (Royal Blue, Eye-clean): "),
                  TextSpan(text: "\$1,000 – \$4,000 per carat\n"),
                  TextSpan(text: "• Very Good Quality (Blue, Slight Inclusions): "),
                  TextSpan(text: "\$500 – \$1,000 per carat\n"),
                  TextSpan(text: "• Medium Quality (Medium Blue): "),
                  TextSpan(text: "\$150 – \$500 per carat\n"),
                  TextSpan(text: "• Low Quality (Pale Blue, Heavily Included): "),
                  TextSpan(text: "\$20 – \$150 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                    text: "Sapphires are graded based on color, clarity, cut, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Deep blue shades are most valuable; uniform color is preferred.\n"),
                  TextSpan(text: "• Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred; some inclusions are normal.\n"),
                  TextSpan(text: "• Cut: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Well-cut sapphires maximize brilliance and color.\n"),
                  TextSpan(text: "• Treatment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Heat-treated sapphires are common; untreated stones are rarer and more valuable."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                  TextSpan(text: "Major sources of Sapphire include:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "• Kashmir (India): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Famous for velvety royal blue sapphires, highly \n\t prized.\n"),
                  TextSpan(text: "• Myanmar (Burma): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for high-quality blue sapphires.\n"),
                  TextSpan(text: "• Sri Lanka (Ceylon): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Produces lighter blue sapphires with excellent \n\t clarity.\n"),
                  TextSpan(text: "• Madagascar & Australia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "New sources producing a range of blue \n\t sapphires."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/blue_glass1.png",
              title: "Blue Glass:",
              desc: "Low-cost imitation, weaker brilliance than sapphire.\n",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/blue_zircon.png",
              title: "Blue Zircon:",
              desc: "Natural stone resembling sapphire, slightly softer.\n",
              width: 55,
              height: 60,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/blue_spinel.png",
              title: "Blue Spinel:",
              desc: "Natural gemstone often confused with sapphire, softer and less vivid.\n",
              width: 55,
              height: 60,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                  TextSpan(text: "• Sapphires have been treasured for centuries as symbols of wisdom, \n\t virtue, and good fortune.\n"),
                  TextSpan(text: "• Worn by royalty and clergy as protective stones.\n"),
                  TextSpan(text: "• Believed to attract divine favor, protect from envy, and bring spiritual \n\t insight.\n"),
                  TextSpan(text: "• Birthstone for September, representing loyalty and nobility."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                  TextSpan(text: "• Clean with mild soap and warm water.\n"),
                  TextSpan(text: "• Avoid harsh chemicals and ultrasonic cleaners if stone is treated.\n"),
                  TextSpan(text: "• Store separately to prevent scratches.\n"),
                  TextSpan(text: "• Periodically check settings to ensure security."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses
            Text(
              "Uses of Sapphire",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                  TextSpan(text: "• Spiritual & Symbolic: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Represents wisdom, loyalty, and nobility.\n"),
                  TextSpan(text: "• Investment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "High-quality sapphires are prized collector gems."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying
            Text(
              "Tips for Buying Sapphire",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
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
                  TextSpan(text: "Deep, vivid blue sapphires are most valuable.\n"),
                  TextSpan(text: "• Examine Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred\n"),
                  TextSpan(text: "• Ask About Treatment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Untreated sapphires are rarer and more valuable.\n"),
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
