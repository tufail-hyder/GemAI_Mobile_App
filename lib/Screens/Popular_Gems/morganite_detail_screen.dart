import 'package:flutter/material.dart';

class MorganiteDetailScreen extends StatelessWidget {
  const MorganiteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Morganite",
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
            // Morganite Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/MorganiteBg.jpg",
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
                color: const Color.fromARGB(255, 207, 141, 119),

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
                    text: "Retail price for 1 carat Morganite (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality (Vivid Pink, Eye-clean): "),
                  TextSpan(text: "\$300 – \$600 per carat\n"),
                  TextSpan(text: "• Very Good Quality (Pink, Slight Inclusions): "),
                  TextSpan(text: "\$150 – \$300 per carat\n"),
                  TextSpan(text: "• Medium Quality (Light Pink, Visible Inclusions): "),
                  TextSpan(text: "\$50 – \$150 per carat\n"),
                  TextSpan(text: "• Low Quality (Pale Pink, Heavily Included): "),
                  TextSpan(text: "\$10 – \$50 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 207, 141, 119),
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
                    text: "Morganite is evaluated based on color, clarity, cut, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rich pink or peach hues are most desirable.\n"),
                  TextSpan(text: "• Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred; inclusions lower value.\n"),
                  TextSpan(text: "• Cut: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Well-cut stones enhance brilliance and depth of color.\n"),
                  TextSpan(text: "• Origin: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Primarily from Brazil, Mozambique, and Madagascar."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 207, 141, 119),
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
                  TextSpan(text: "Morganite is sourced from several countries:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "• Brazil: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Largest producer, known for vivid pink and peach stones.\n"),
                  TextSpan(text: "• Mozambique: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Produces high-quality pink Morganite.\n"),
                  TextSpan(text: "• Madagascar: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Known for light pink and peachy stones.\n"),
                  TextSpan(text: "• USA (California & Maine): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Smaller sources of collectible Morganite."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color:const Color.fromARGB(255, 207, 141, 119),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/pink_glass.png",
              title: "Pink Glass:",
              desc: "Low-cost imitation that lacks both brilliance and hardness, offering only a dull sparkle.\n",
              width: 60,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/pink_topaz.png",
              title: "Pink Topaz:",
              desc: "Natural stone resembling Morganite, slightly harder but different hue.\n",
              width: 60,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/pink_quartz.png",
              title: "Rose Quartz:",
              desc: "Soft, pale pink crystal that mimics Morganite but lacks its depth and clarity.",
              width: 60,
              height: 55,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color:const Color.fromARGB(255, 207, 141, 119),
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
                  TextSpan(text: "• Morganite was discovered in 1910 and named after financier J.P. \n\t Morgan.\n"),
                  TextSpan(text: "• Believed to bring love, compassion, and healing energy.\n"),
                  TextSpan(text: "• Often given as a romantic gift due to its gentle pink hue.\n"),
                  TextSpan(text: "• Birthstone for October (alternative), representing emotional balance \n\t and confidence."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 207, 141, 119),
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
                  TextSpan(text: "• Check settings periodically to ensure gemstone security."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses
            Text(
              "Uses of Morganite",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 207, 141, 119),
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
                  TextSpan(text: "Represents love, compassion, and emotional \n\t balance.\n"),
                  TextSpan(text: "• Investment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "High-quality Morganite is sought after by collectors."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying
            Text(
              "Tips for Buying Morganite",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 207, 141, 119),
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
                  TextSpan(text: "Vivid pink or peach tones are most desirable.\n"),
                  TextSpan(text: "• Examine Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred; slight inclusions are \n\t normal.\n"),
                  TextSpan(text: "• Compare Prices: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Check multiple reputable sellers for the best value.\n"),
                  TextSpan(text: "• Certification: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Ask for certification to ensure authenticity and treatment \n\t status."),
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
