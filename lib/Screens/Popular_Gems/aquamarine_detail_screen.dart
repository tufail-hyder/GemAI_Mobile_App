import 'package:flutter/material.dart';

class AquamarineDetailScreen extends StatelessWidget {
  const AquamarineDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Aquamarine",
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
            // Aquamarine Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/AquamarineBg.jpg",
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),

            // ---------------- PRICE ----------------
            Text(
              "Price",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                        "Retail price for 1 carat Aquamarine (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality(Dark): "),
                  TextSpan(text: "\$200 – \$600 per carat\n"),
                  TextSpan(text: "• Good Quality(Medium): "),
                  TextSpan(text: "\$50 – \$200 per carat\n"),
                  TextSpan(text: "• Commercial Quality(Light): "),
                  TextSpan(text: "\$20 – \$50 per carat"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- QUALITY FACTORS ----------------
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                        "Aquamarine quality is judged based on color, clarity, cut, and size:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Intense sea-blue shades are most valued.\n"),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Transparent stones with minimal inclusions.\n",
                  ),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Faceted cuts enhance sparkle and color.\n"),
                  TextSpan(
                    text: "• Treatment: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Often heat-treated to remove greenish tones.",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- ORIGIN ----------------
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                    text: "Major sources of Aquamarine include:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Brazil: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Largest and best-quality production.\n"),
                  TextSpan(
                    text: "• Pakistan: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Notable for sky-blue stones.\n"),
                  TextSpan(
                    text: "• Nigeria: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Bright blue-green stones.\n"),
                  TextSpan(
                    text: "• Madagascar: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Clear stones with pastel blue hues."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- IMITATION ----------------
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 12),

            imitationItem(
              img: "assets/images/blue_glass.png",
              title: "Blue Glass:",
              desc: "Soft and inexpensive imitation, often used in jewelry.\n",
              width: 50,
              height: 50,
            ),

            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/beryl_green.png",
              title: "Green Beryl:",
              desc:
                  "Lower-quality beryl sometimes dyed to resemble aquamarine.",
              width: 55,
              height: 50,
            ),

            SizedBox(height: 20),

            // ---------------- HISTORY ----------------
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                        "• Believed to protect sailors and ensure safe voyages.\n",
                  ),
                  TextSpan(
                    text:
                        "• Popular in ancient Rome for jewelry and talismans.\n",
                  ),
                  TextSpan(
                    text:
                        "• Associated with courage, tranquility, and clarity.\n",
                  ),
                  TextSpan(
                    text:
                        "• Birthstone for March, symbolizing youth and serenity.",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- CARE ----------------
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                  TextSpan(
                    text: "• Avoid harsh chemicals and ultrasonic cleaners.\n",
                  ),
                  TextSpan(
                    text:
                        "• Store separately to prevent scratches from harder stones.",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- USES ----------------
            Text(
              "Uses of Aquamarine",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 31, 141, 214),
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
                  TextSpan(text: "Rings, earrings, pendants, and bracelets.\n"),
                  TextSpan(
                    text: "• Healing Crystal: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Calms the mind and reduces stress.\n"),
                  TextSpan(
                    text: "• Decorative: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Used in ornaments and carvings."),
                ],
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Tips for Buying Aquamarine",
              style: TextStyle(
                fontSize: 22,
                color:Color.fromARGB(255, 31, 141, 214),
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
                    text: "• Check the Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Deep blue or slightly greenish-blue is most valuable.\n",
                  ),
                  TextSpan(
                    text: "• Look for Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Eye-clean stones without visible inclusions are preferred.\n",
                  ),
                  TextSpan(
                    text: "• Cut Matters: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Well-cut stones show more brilliance.\n"),
                  TextSpan(
                    text: "• Know the Origin: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Brazil and Madagascar produce high-quality Aquamarine.\n",
                  ),
                  TextSpan(
                    text: "• Watch for Treatments: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "Heat treatment is common and acceptable.\n"),
                  TextSpan(
                    text: "• Beware of Imitations: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Blue topaz or dyed quartz can look similar.\n",
                  ),
                  TextSpan(
                    text: "• Compare Prices: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Deep blue: \$50–\$500 per carat, Medium: \$20–\$50, Light: \$5–\$20.",
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
