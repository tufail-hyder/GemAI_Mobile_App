import 'package:flutter/material.dart';

class TanzaniteDetailScreen extends StatelessWidget {
  const TanzaniteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Tanzanite",
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
            // Tanzanite Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/TanzaniteBg.jpg",
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
                color:  const Color.fromARGB(255, 93, 63, 156),
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
                    text:
                        "Retail price for 1 carat Tanzanite (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• AAA Quality (Deep Blue-Violet): "),
                  TextSpan(text: "\$800 – \$1,500 per carat\n"),
                  TextSpan(text: "• AA Quality (Medium Blue-Violet): "),
                  TextSpan(text: "\$400 – \$800 per carat\n"),
                  TextSpan(text: "• A Quality (Light Blue-Violet): "),
                  TextSpan(text: "\$100 – \$400 per carat\n"),
                  TextSpan(text: "• Low Quality (Very Light/Greenish): "),
                  TextSpan(text: "\$20 – \$100 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Quality Factors
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                    text:
                        "Tanzanite is graded based on color, clarity, cut, and size:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Color: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Deep blue-violet is most valuable, lighter or greenish tones are \n\t lower valued.\n"),
                  TextSpan(text: "• Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones without inclusions are preferred.\n"),
                  TextSpan(text: "• Cut: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Well-cut stones enhance brilliance and pleochroism.\n"),
                  TextSpan(text: "• Size/Carat: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Larger stones with rich color are more valuable."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Main Origin
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                  TextSpan(text: "Tanzanite is found almost exclusively in:\n", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "• Tanzania (Merelani Hills): ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "The only known commercial source of \n\t Tanzanite.\n"),
                  TextSpan(text: "• Other countries: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Occasional small finds, but not commercially \n\t significant."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color:const Color.fromARGB(255, 93, 63, 156),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/blue_glass2.png",
              title: "Colored Glass:",
              desc: "Low-cost imitation, lacks hardness and pleochroism.\n",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 8),
            imitationItem(
              img: "assets/images/cubic_zirconia2.png",
              title: "Cubic Zirconia:",
              desc: "Synthetic stone that may resemble Tanzanite but softer and less vibrant.",
              width: 55,
              height: 55,
            ),
            SizedBox(height: 20),

            // History & Lore
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                  TextSpan(text: "• Tanzanite was discovered in 1967 in Tanzania and quickly became \n\t popular.\n"),
                  TextSpan(text: "• Known for its rare and vivid blue-violet color.\n"),
                  TextSpan(text: "• Believed to promote calm, creativity, and spiritual awareness.\n"),
                  TextSpan(text: "• December birthstone and highly sought after by collectors."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Care & Cleaning
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                  TextSpan(text: "• Avoid harsh chemicals, heat, and ultrasonic cleaners.\n"),
                  TextSpan(text: "• Store separately to prevent scratches.\n"),
                  TextSpan(text: "• Check gemstone settings regularly."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses
            Text(
              "Uses of Tanzanite",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                  TextSpan(text: "Rings, earrings, necklaces, bracelets.\n"),
                  TextSpan(text: "• Collectors & Investment: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rare and valuable due to limited supply.\n"),
                  TextSpan(text: "• Symbolic & Spiritual: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Associated with calm, creativity, and spiritual \n\t insight."),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying
            Text(
              "Tips for Buying Tanzanite",
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 93, 63, 156),
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
                  TextSpan(text: "Deep blue-violet is most valuable.\n"),
                  TextSpan(text: "• Examine Clarity: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Eye-clean stones are preferred.\n"),
                  TextSpan(text: "• Compare Prices: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Check multiple reputable sellers.\n"),
                  TextSpan(text: "• Certification: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Ask for certification to verify authenticity and treatment \n\t status."),
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
