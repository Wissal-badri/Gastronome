import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronome/theme/app_theme.dart';
import 'package:gastronome/screens/country_screen.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;
  final String categoryId;

  const CategoryScreen({
    super.key,
    required this.categoryName,
    required this.categoryId,
  });

  // Updated List with Morocco first
  final List<String> countries = const [
    "Morocco", "France", "Italy", "Japan", "USA", "Spain",
    "Turkey", "India", "Lebanon", "Mexico", "China"
  ];

  // Helper to get flag emoji
  String getCountryFlag(String country) {
    const flags = {
      "Morocco": "🇲🇦",
      "France": "🇫🇷",
      "Italy": "🇮🇹",
      "Japan": "🇯🇵",
      "USA": "🇺🇸",
      "Spain": "🇪🇸",
      "Turkey": "🇹🇷",
      "India": "🇮🇳",
      "Lebanon": "🇱🇧",
      "Mexico": "🇲🇽",
      "China": "🇨🇳",
    };
    return flags[country] ?? "🏳️";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName.toUpperCase(),
          style: GoogleFonts.cinzel(
            color: AppTheme.champagneGold,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: AppTheme.deepCharcoal),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: countries.length,
        itemBuilder: (context, index) {
          final country = countries[index];
          // E.g., "French Pastries" logic could be refined but sticking to "Country Category"
          final displayTitle = "$country $categoryName"; 
          
          return CountryCard(
            title: displayTitle,
            countryName: country,
            flagEmoji: getCountryFlag(country),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountryScreen(
                    countryName: country,
                    categoryName: categoryName,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  final String title;
  final String countryName;
  final String flagEmoji;
  final VoidCallback onTap;

  const CountryCard({
    super.key,
    required this.title,
    required this.countryName,
    required this.flagEmoji,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.warmIvory,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppTheme.champagneGold.withOpacity(0.5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Flag Display
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: AppTheme.deepCharcoal.withOpacity(0.05),
                shape: BoxShape.circle,
                border: Border.all(color: AppTheme.champagneGold.withOpacity(0.3)),
              ),
              child: Center(
                child: Text(
                  flagEmoji,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Text: "Morocco Pastries"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                title, 
                textAlign: TextAlign.center,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: AppTheme.deepCharcoal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
