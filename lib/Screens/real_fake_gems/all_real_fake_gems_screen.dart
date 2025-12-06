import 'package:flutter/material.dart';
import 'package:project/Screens/Main Screens/Home.dart';

class AllRealFakeGemsScreen extends StatelessWidget {
  const AllRealFakeGemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 227, 227),
      appBar: AppBar(
        title: const Text(
          "All Real vs Fake Gems",
          style: TextStyle(fontFamily: 'TimesRomanFont', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 230, 227, 227),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: realFakeGems.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 2 columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 4 / 6, // width/height ratio for card style
          ),
          itemBuilder: (context, index) {
            final gem = realFakeGems[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => gem.screen),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.25),
                      spreadRadius: 2,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            gem.imagePath,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            gem.name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'TimesRomanFont',
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 6),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
