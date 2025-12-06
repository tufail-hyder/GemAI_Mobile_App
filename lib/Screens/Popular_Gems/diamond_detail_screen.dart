import 'package:flutter/material.dart';

class DiamondDetailScreen extends StatelessWidget {
  const DiamondDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Diamond",
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
            // Diamond Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/DiamondBg.jpg",
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
                color: Colors.green,
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
                        "Retail price for 1 carat diamond (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality: "),
                  TextSpan(text: "\$12,000 – \$22,000 per carat\n"),
                  TextSpan(text: "• Very Good Quality: "),
                  TextSpan(text: "\$8,100 – \$12,600 per carat\n"),
                  TextSpan(text: "• Good Quality: "),
                  TextSpan(text: "\$3,500 – \$8,700 per carat\n"),
                  TextSpan(text: "• Fair Quality: "),
                  TextSpan(text: "\$1,000 – \$5,100 per carat"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Quality Factors (4 Cs)",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "Diamonds are graded based on 4 main quality factors known as the 4 Cs:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Determines the diamond's brilliance and sparkle. Excellent cuts reflect light perfectly.\n",
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Graded from D (colorless) to Z (light yellow/brown). Less color usually means higher value.\n",
                  ),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Measures the presence of internal or external imperfections (inclusions or blemishes).\n",
                  ),
                  TextSpan(
                    text: "• Carat: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Refers to the weight of the diamond. Higher carat usually means larger size and higher price.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Main Origin Section
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "Diamonds are found in several countries around the world:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Russia: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Large, high-clarity diamonds, mainly from Yakutia.\n",
                  ),
                  TextSpan(
                    text: "• Australia: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Known for pink and brown diamonds, especially from the Argyle mine.\n",
                  ),
                  TextSpan(
                    text: "• Canada: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "High-quality, ethically mined diamonds from the Northwest Territories.\n",
                  ),
                  TextSpan(
                    text: "• Africa: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Major producer in Botswana, South Africa, Namibia, and Angola, with gem-quality diamonds.\n",
                  ),
                  TextSpan(
                    text: "• Other countries: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "India (historical source) and Brazil (alluvial diamonds)",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Imitation Section with Images
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),

            // Cubic Zirconia
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/cubic_zirconia.png",
                    width: 60,
                    height: 60,
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
                          text: "Cubic Zirconia (CZ): ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              "Synthetic, cheaper and less hard than a real diamond.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Moissanite
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/moissanite.png",
                    width: 60,
                    height: 60,
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
                          text: "Moissanite: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              "Lab-created gemstone resembling diamond in brilliance but slightly softer.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // White Sapphire
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/white_sapphire.png",
                    width: 60,
                    height: 60,
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
                          text: "White Sapphire: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              "Natural gemstone that mimics diamond but lacks sparkle and hardness.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Glass/Crystal
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/images/glass.png",
                    width: 60,
                    height: 60,
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
                          text: "Glass or Crystal: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text:
                              "Low-cost imitations that are very soft and fragile.",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),

            // Certification Note
            Text(
              "Important Note: Always check for certification from GIA, IGI, or other reputable labs to ensure authenticity.",
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                fontFamily: 'TimesRomanFont',
                fontStyle: FontStyle.italic,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "• Diamonds have fascinated humans for thousands of years. They were first discovered in India around 4th century BC, where they were valued as religious icons and symbols of wealth and power.\n\n",
                  ),
                  TextSpan(
                    text:
                        "• During the Middle Ages, diamonds were believed to have mystical powers, such as protecting warriors in battle and bringing courage to their owners.\n\n",
                  ),
                  TextSpan(
                    text:
                        "• In modern times, diamonds became symbols of love and commitment, especially with the rise of diamond engagement rings in the 20th century.\n\n",
                  ),
                  TextSpan(
                    text:
                        "• Legend & Lore: Diamonds were thought to bring clarity, strength, and invincibility. Some myths even claimed that diamonds could absorb negative energy or evil spirits.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Section Title
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "Diamonds are one of the hardest gemstones, but they still require proper care to maintain their brilliance and sparkle.\n",
                  ),
                  TextSpan(
                    text: "• Regular Cleaning: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Clean your diamond jewelry regularly using warm water, mild dish soap, and a soft brush. Avoid harsh chemicals.\n",
                  ),
                  TextSpan(
                    text: "• Avoid Abrasives: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Even though diamonds are hard, their settings (metal prongs) can get scratched or loosened by abrasive materials.\n",
                  ),
                  TextSpan(
                    text: "• Store Properly: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Store diamond jewelry separately in soft cloth or padded jewelry boxes to prevent scratches from other jewelry.\n",
                  ),
                  TextSpan(
                    text: "• Professional Checkup: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Take your diamond jewelry to a professional jeweler at least once a year to check for loose settings and clean it thoroughly.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Famous Diamonds
            Text(
              "Famous Diamonds",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                    text: "• Hope Diamond: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Known for its deep blue color and mysterious legends.\n",
                  ),
                  TextSpan(
                    text: "• Koh-i-Noor: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Historic diamond from India, now part of the British Crown Jewels.\n",
                  ),
                  TextSpan(
                    text: "• Cullinan Diamond: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Largest gem-quality diamond ever found, cut into several famous gems.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Uses of Diamonds
            Text(
              "Uses of Diamonds",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                    text: "• Jewelry: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Engagement rings, necklaces, earrings, and luxury items.\n",
                  ),
                  TextSpan(
                    text: "• Industrial: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Cutting tools, drills, and high-precision equipment.\n",
                  ),
                  TextSpan(
                    text: "• Technology: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Used in lasers, electronics, and semiconductors due to hardness and thermal conductivity.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Symbolism & Cultural Significance
            Text(
              "Symbolism & Cultural Significance",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "Diamonds are symbols of wealth, power, love, and purity. They are used in religious ceremonies, royal regalia, and as engagement rings across many cultures.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Diamond Market & Certification
            Text(
              "Diamond Market & Certification",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                        "Always look for certification from GIA, IGI, or other reputable labs when buying diamonds. Certified diamonds are graded and authenticated, ensuring value and authenticity.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Tips for Buying Diamonds
            Text(
              "Tips for Buying Diamonds",
              style: TextStyle(
                fontSize: 22,
                color: Colors.green,
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
                    text: "• Check the 4 Cs: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Cut, Color, Clarity, Carat.\n"),
                  TextSpan(
                    text: "• Ask for Certification: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Always ensure the diamond is certified.\n"),
                  TextSpan(
                    text: "• Compare Prices: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Check across reputable jewelers for the best value.",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
