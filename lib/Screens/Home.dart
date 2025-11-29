import 'package:flutter/material.dart';

// ---------------- POPULAR GEMS ----------------
import 'Popular_Gems/diamond_detail_screen.dart';
import 'Popular_Gems/amethyst_detail_screen.dart';
import 'Popular_Gems/citrine_detail_screen.dart';
import 'Popular_Gems/aquamarine_detail_screen.dart';
import 'Popular_Gems/emerald_detail_screen.dart';
import 'Popular_Gems/ruby_detail_screen.dart';
import 'Popular_Gems/sapphire_detail_screen.dart';
import 'Popular_Gems/morganite_detail_screen.dart';
import 'Popular_Gems/topaz_detail_screen.dart';
import 'Popular_Gems/tanzanite_detail_screen.dart';
import 'Popular_Gems/peridot_detail_screen.dart';

// ---------------- REAL VS FAKE GEM SCREENS ----------------
import 'real_fake_gems/malachite_screen.dart';
import 'real_fake_gems/labradorite_screen.dart';
import 'real_fake_gems/pearl_screen.dart';
import 'real_fake_gems/moonstone_screen.dart';
import 'real_fake_gems/opal_screen.dart';
import 'real_fake_gems/cirtine_screen.dart';
import 'real_fake_gems/diamond_screen.dart';
import 'real_fake_gems/turquoise_screen.dart';
import 'real_fake_gems/red_coral_screen.dart';
import 'real_fake_gems/amber_screen.dart';
import 'real_fake_gems/fluorite_screen.dart';
import 'real_fake_gems/Gold_screen.dart';
import 'real_fake_gems/Amethyst_screen.dart';
import 'real_fake_gems/all_real_fake_gems_screen.dart';

class GemItem {
  final String name;
  final String imagePath;
  final Widget detailScreen;

  GemItem(this.name, this.imagePath, this.detailScreen);
}

final List<GemItem> gems = [
  GemItem("Diamond", "assets/images/Diamond.png", DiamondDetailScreen()),
  GemItem("Amethyst", "assets/images/Amethyst.png", AmethystDetailScreen()),
  GemItem("Citrine", "assets/images/Citrine.png", CitrineDetailScreen()),
  GemItem("Aquamarine", "assets/images/Aquamarine.png", AquamarineDetailScreen()),
  GemItem("Emerald", "assets/images/Emerald.png", EmeraldDetailScreen()),
  GemItem("Ruby", "assets/images/Ruby.png", RubyDetailScreen()),
  GemItem("Sapphire", "assets/images/Sapphire.png", SapphireDetailScreen()),
  GemItem("Morganite", "assets/images/Morganite.png", MorganiteDetailScreen()),
  GemItem("Topaz", "assets/images/Topaz.png", TopazDetailScreen()),
  GemItem("Tanzanite", "assets/images/Tanzanite.png", TanzaniteDetailScreen()),
  GemItem("Peridot", "assets/images/Peridot.png", PeridotDetailScreen()),
];

// ---------------- REAL VS FAKE GEM MODEL ----------------
class RealFakeGemItem {
  final String name;
  final String imagePath;
  final Widget screen;

  RealFakeGemItem(this.name, this.imagePath, this.screen);
}

final List<RealFakeGemItem> realFakeGems = [
  RealFakeGemItem("Real vs Fake\nMalachite", "assets/images/Malachite.png", const MalachiteScreen()),
  RealFakeGemItem("Real vs Fake\nLabradorite", "assets/images/Labradorite.png", const LabradoriteScreen()),
  RealFakeGemItem("Real vs Fake\nPearl", "assets/images/Pearl.png", const PearlScreen()),
  RealFakeGemItem("Real vs Fake\nMoonstone", "assets/images/Moonstone.png", const MoonstoneScreen()),
  RealFakeGemItem("Real vs Fake\nOpal", "assets/images/Opal.png", const OpalScreen()),
  RealFakeGemItem("Real vs Fake\nGold", "assets/images/Gold.png", const GoldScreen()),
  RealFakeGemItem("Real vs Fake\nDiamond", "assets/images/Diamond.png", const DiamondScreen()),
  RealFakeGemItem("Real vs Fake\nTurquoise", "assets/images/Turquoise.png", const TurquoiseScreen()),
  RealFakeGemItem("Real vs Fake\nRed Coral", "assets/images/RedCoral.png", const RedCoralScreen()),
  RealFakeGemItem("Real vs Fake\nAmber", "assets/images/Amber.png", const AmberScreen()),
  RealFakeGemItem("Real vs Fake\nAmethyst", "assets/images/Amethyst.png", const AmethystScreen()),
  RealFakeGemItem("Real vs Fake\nCitrine", "assets/images/Citrine.png", const CitrineScreen()),
  RealFakeGemItem("Real vs Fake\nFluorite", "assets/images/Fluorite.png", const FluoriteScreen()),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 199, 198, 198),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------------- SEARCH ROW ----------------
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                        labelText: "Search",
                        labelStyle: const TextStyle(
                          fontFamily: 'TimesRomanFont',
                          fontSize: 18,
                        ),
                        prefixIcon: const Icon(Icons.search, size: 24),
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xFFB48B54),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/ChatbotLogo.png',
                        width: 50,
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // ---------------- FEATURE BUTTONS ----------------
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  featureIcon(Icons.monetization_on, "Valuation", () {}),
                  featureIcon(Icons.camera_alt, "Identify", () {}),
                  featureIcon(Icons.storefront, "Market", () {}),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // ---------------- POPULAR GEMS ----------------
            popularGemsSection(context),

            // ---------------- BOOKS ----------------
            sectionTitle("Books"),
            const SizedBox(height: 15),
            bookList(context),
            const SizedBox(height: 20),

            // ---------------- REAL VS FAKE ----------------
            sectionTitle("Real vs Fake"),
            const SizedBox(height: 12),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: realFakeGems.length > 5 ? 6 : realFakeGems.length,
                itemBuilder: (context, index) {
                  if (index < 5) {
                    final gem = realFakeGems[index];
                    return realVsFakeGem(context, gem);
                  } else {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const AllRealFakeGemsScreen()),
                        );
                      },
                      child: Container(
                        width: 90,
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 202, 131, 39),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Show All",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TimesRomanFont',
                              fontSize: 15,
                              color: Colors.white),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),

            const SizedBox(height: 20),

            // ---------------- ARTICLES ----------------
            sectionTitle("Articles"),
            articleList(),
          ],
        ),
      ),
    );
  }

  // ---------------- WIDGETS ----------------
  Widget featureIcon(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 240, 159, 39),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'TimesRomanFont',
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'TimesRomanFont',
      ),
    );
  }

  Widget realVsFakeGem(BuildContext context, RealFakeGemItem gem) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => gem.screen),
        );
      },
      child: Container(
        width: 110,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              width: 1100,
            child:  Image.asset(gem.imagePath,fit: BoxFit.cover,),
            ),
            Text(
              gem.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: 'TimesRomanFont',fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookList(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          bookCard(context, "assets/images/book1.jpg"),
          bookCard(context, "assets/images/book3.jpg"),
          bookCard(context, "assets/images/book4.png"),
          bookCard(context, "assets/images/book2.jpg"),
        ],
      ),
    );
  }

  Widget bookCard(BuildContext context, String imagePath) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget articleList() {
    return Column(
      children: [
        articleCard("How to tell if a diamond is real"),
        articleCard("Educate kids about rock collection"),
      ],
    );
  }

  Widget articleCard(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(title),
    );
  }
}

// ---------------- POPULAR GEMS SECTION ----------------
Widget popularGemsSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Popular Gems",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'TimesRomanFont',
        ),
      ),
      const SizedBox(height: 12),
      SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: gems.length,
          itemBuilder: (context, index) {
            final gem = gems[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => gem.detailScreen),
                );
              },
              child: Container(
                width: 77,
                margin: const EdgeInsets.only(right: 12),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(gem.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      gem.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontFamily: 'TimesRomanFont',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
