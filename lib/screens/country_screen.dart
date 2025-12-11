import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronome/theme/app_theme.dart';
import 'package:gastronome/screens/dish_detail_screen.dart';

import 'package:gastronome/data/pastries_data.dart';
import 'package:gastronome/data/traditional_meals_data.dart';
import 'package:gastronome/data/salty_dishes_data.dart';
import 'package:gastronome/data/sweet_dishes_data.dart';



class CountryScreen extends StatelessWidget {
  final String countryName;
  final String categoryName;

  const CountryScreen({
    super.key,
    required this.countryName,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    // Mock Data logic
    List<Map<String, String>> dishes = [];
    
    // Specific Logic using separated Data files
    if (categoryName == "Pastries") {
      dishes = PastriesData.getDishes(countryName);
    } else if (categoryName == "Traditional Meals") {
      dishes = TraditionalMealsData.getDishes(countryName);
    } else if (categoryName == "Salty Dishes") {
      dishes = SaltyDishesData.getDishes(countryName);
    } else if (categoryName == "Sweet Dishes") {
      dishes = SweetDishesData.getDishes(countryName);
    } else {
       dishes = [
        {"name": "Coming Soon", "desc": "More delicious recipes on the way!"},
      ];
    } 


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$countryName $categoryName".toUpperCase(),
          style: GoogleFonts.cinzel(
            color: AppTheme.champagneGold,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: AppTheme.deepCharcoal),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return DishCard(
            name: dish["name"]!,
            description: dish["desc"]!,
            imagePath: dish["image"],
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DishDetailScreen(
                    title: dish["name"]!, 
                    description: dish["desc"]!,
                    imagePath: dish["image"],
                    recipeDetails: dish["fullRecipe"] ?? "Recipe details coming soon...",
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

class DishCard extends StatelessWidget {
  final String name;
  final String description;
  final String? imagePath;
  final VoidCallback onTap;

  const DishCard({
    super.key,
    required this.name,
    required this.description,
    this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 130, // Increased height to prevent overflow
          decoration: BoxDecoration(
            color: AppTheme.richEspresso.withOpacity(0.7), 
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppTheme.champagneGold.withOpacity(0.6), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              // Image Placeholder or Asset (Left)
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: imagePath != null ? DecorationImage(
                    image: AssetImage(imagePath!),
                    fit: BoxFit.cover,
                  ) : null,
                ),
                child: imagePath == null 
                  ? const Icon(Icons.restaurant, color: Colors.white24, size: 40)
                  : null,
              ),
              
              // Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12), // Reduced padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.playfairDisplay(
                          color: AppTheme.warmIvory,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Expanded( // Use Expanded to let description take available space
                        child: Text(
                          description,
                          style: GoogleFonts.lato(
                            color: AppTheme.warmIvory.withOpacity(0.7),
                            fontSize: 12,
                          ),
                          maxLines: 3, // Allow up to 3 lines
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "DISCOVER MORE ›",
                            style: GoogleFonts.lato(
                              color: AppTheme.champagneGold,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
