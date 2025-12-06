import 'package:flutter/material.dart';

class CitrineDetailScreen extends StatelessWidget {
  const CitrineDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Citrine",
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
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/CitrineBg.jpg",
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
                color: Color.fromARGB(255, 214, 141, 31),
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
                    text: "Retail price for 1 carat Citrine (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Top Quality(Maderia): "),
                  TextSpan(text: "\$30 – \$70 per carat\n"),
                  TextSpan(text: "• Very Good Quality(Orange): "),
                  TextSpan(text: "\$15 – \$30 per carat\n"),
                  TextSpan(text: "• Good Quality(Yellow): "),
                  TextSpan(text: "\$10 – \$20 per carat\n"),
                  TextSpan(text: "• Low Quality(Golad): "),
                  TextSpan(text: "\$5 – \$15 per carat"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- QUALITY FACTORS ----------------
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 214, 141, 31),
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
                    text: "Citrine quality is judged based on color, clarity, cut, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Deep orange, golden yellow, and ‘Madeira’ tones are best.\n",
                  ),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Eye-clean stones are highly valued.\n",
                  ),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Well-cut stones show more brilliance.\n",
                  ),
                  TextSpan(
                    text: "• Treatment: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Most citrine is heat-treated amethyst; natural citrine is rarer.",
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
                color: Color.fromARGB(255, 214, 141, 31),
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
                    text: "Major sources of Citrine include:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• Brazil: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Largest producer.\n"),
                  TextSpan(text: "• Madagascar: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Natural untreated citrine.\n"),
                  TextSpan(text: "• Russia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Deep golden-orange stones.\n"),
                  TextSpan(text: "• Zambia & Namibia: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Bright yellow stones."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- IMITATION ----------------
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 214, 141, 31),
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 12),

            imitationItem(
              img: "assets/images/heat_amethyst.png",
              title: "Heat-Treated Amethyst:",
              desc: "Most common imitation; heated to turn purple into golden.\n",
              width: 60,
              height: 55,
            ),

            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/glass_yellow.png",
              title: "Yellow Glass:",
              desc: "Yellow glass is a very inexpensive Citrine imitation with weaker brilliance.\n",
              width: 55,
              height: 60,
            ),

            SizedBox(height: 8),

            imitationItem(
              img: "assets/images/yellow_topaz.png",
              title: "Yellow Topaz:",
              desc: "Yellow Topaz, a natural stone, is often mistaken for Citrine because of its similar golden color.",
              width: 55,
              height: 45,
            ),

            SizedBox(height: 20),

            // ---------------- HISTORY ----------------
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 214, 141, 31),
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
                  TextSpan(text: "• Used since ancient Greece (300 BC).\n"),
                  TextSpan(text: "• Called the ‘Merchant’s Stone’ for bringing wealth.\n"),
                  TextSpan(text: "• Popular in 17th-century Scottish jewelry.\n"),
                  TextSpan(text: "• Birthstone for November, symbolizing positivity and abundance."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- CARE ----------------
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 214, 141, 31),
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
                  TextSpan(text: "• Avoid long exposure to sunlight (color may fade).\n"),
                  TextSpan(text: "• Store separately to avoid scratches."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // ---------------- USES ----------------
            Text(
              "Uses of Citrine",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 214, 141, 31),
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
                  TextSpan(text: "Used in rings, pendants, and earrings.\n"),
                  TextSpan(text: "• Feng Shui: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Believed to attract wealth.\n"),
                  TextSpan(text: "• Healing Crystal: ", style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Boosts confidence and emotional balance."),
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
