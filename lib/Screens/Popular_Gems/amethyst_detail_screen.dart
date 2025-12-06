import 'package:flutter/material.dart';

class AmethystDetailScreen extends StatelessWidget {
  const AmethystDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        title: Text(
          "Amethyst",
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
            // Amethyst Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/AmethystBg.jpg",
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
                color: Colors.purple,
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
                        "Retail price for 1 plus carat Amethyst (High → Low Quality):\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: "• High-Quality African Amethyst(Vivid): "),
                  TextSpan(text: "\$20 – \$40 per carat\n"),
                  TextSpan(text: "• Medium Quality: "),
                  TextSpan(text: "\$5 – \$15 per carat\n"),
                  TextSpan(text: "• Low Quality(Light): "),
                  TextSpan(text: "\$1 – \$5 per carat"),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Quality Section
            Text(
              "Quality Factors",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),

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
                    text:
                        "Amethyst is graded based on color, clarity, and origin:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "• Color: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Deep purple with red or blue flashes is considered the highest quality.\n",
                  ),
                  TextSpan(
                    text: "• Clarity: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "High clarity (eye-clean) increases value.\n",
                  ),
                  TextSpan(
                    text: "• Cut: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Well-cut stones reflect light better and look more vibrant.\n",
                  ),
                  TextSpan(
                    text: "• Origin: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        "Siberian and African origins usually have the richest colors.",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Origin Section
            Text(
              "Main Origin",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),

            RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    height: 1.6,
                    fontSize: 16,
                    fontFamily: 'TimesRomanFont'),
                children: [
                  TextSpan(
                    text: "Amethyst is mined worldwide, especially:\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "• Brazil: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Largest producer globally.\n"),
                  TextSpan(
                      text: "• Uruguay: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Deep purple, high-value stones.\n"),
                  TextSpan(
                      text: "• Zambia: ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Intense purple with blue undertones.\n"),
                  TextSpan(
                      text: "• Russia (Siberia): ",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: "Rare and extremely valuable."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Imitation Section
            Text(
              "Imitation",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 8),

            // Glass 
            imitationRow(
              "assets/images/amethyst_glass.png",
              "Glass: ",
              "Common imitation with low hardness and weaker color.\n",
              width: 60,
              height: 50,
            ),

            SizedBox(height: 8),

            // Synthetic Amethyst 
            imitationRow(
              "assets/images/amethyst_synthetic.png",
              "Synthetic Amethyst: ",
              "Lab-grown versions that look identical but cost much less.\n",
              width: 60,
              height: 50,
            ),

            SizedBox(height: 8),

            // Dyed Quartz 
            imitationRow(
              "assets/images/amethyst_quartz.png",
              "Dyed Quartz: ",
              "Ower-quality quartz artificially dyed purple to mimic Amethyst.\n",
              width: 60,
              height: 55,
            ),

            SizedBox(height: 8),

            // Paste stones 
            imitationRow(
              "assets/images/amethyst_paste.png",
              "Glass Paste: ",
              "Soft and fragile glass paste imitation, commonly used in low-cost jewelry.",
              width: 60,
              height: 60,
            ),

            SizedBox(height: 20),

            // History
            Text(
              "History & Lore",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),

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
                        "• Ancient Greeks believed Amethyst protected them from drunkenness.\n",
                  ),
                  TextSpan(
                    text:
                        "• In medieval Europe, it symbolized royalty and was used in crowns.\n",
                  ),
                  TextSpan(
                    text:
                        "• Amethyst is the birthstone for February and symbolizes calmness & clarity.",
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Care Section
            Text(
              "Care & Cleaning",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),

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
                          "• Avoid prolonged sunlight: Can fade the purple color.\n"),
                  TextSpan(
                      text:
                          "• Clean with mild soap & warm water — never bleach.\n"),
                  TextSpan(
                      text:
                          "• Store away from harder stones like Sapphire & Ruby."),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Uses Section
            Text(
              "Uses of Amethyst",
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontFamily: 'TimesRomanFont',
              ),
            ),
            SizedBox(height: 6),

            RichText(
              text: TextSpan(
                style: TextStyle(
                    height: 1.6,
                    fontFamily: 'TimesRomanFont',
                    fontSize: 16,
                    color: Colors.black),
                children: [
                  TextSpan(text: "• Jewelry: Rings, pendants, bracelets.\n"),
                  TextSpan(text: "• Meditation: Believed to enhance calmness.\n"),
                  TextSpan(
                      text: "• Décor: Used in geodes and crystal collections.\n"),
                ],
              ),
            ),

            SizedBox(height: 20),
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
