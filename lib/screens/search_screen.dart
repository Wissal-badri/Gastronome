import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronome/theme/app_theme.dart';
import 'package:gastronome/screens/dish_detail_screen.dart';

import 'package:gastronome/data/pastries_data.dart';
import 'package:gastronome/data/traditional_meals_data.dart';
import 'package:gastronome/data/salty_dishes_data.dart';
import 'package:gastronome/data/sweet_dishes_data.dart';
// Note: spicy_dishes_data.dart is empty, so skipping it.

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, String>> _searchResults = [];
  bool _hasSearched = false;

  final List<String> _allCountries = const [
    "Morocco", "France", "Italy", "Japan", "USA", "Spain",
    "Turkey", "India", "Lebanon", "Mexico", "China", "Canada"
  ];

  void _performSearch(String query) {
    if (query.trim().isEmpty) {
      setState(() {
        _searchResults = [];
        _hasSearched = false;
      });
      return;
    }

    final lowerQuery = query.toLowerCase();
    List<Map<String, String>> results = [];

    // Helper to search a specific data source
    void searchInSource(List<Map<String, String>> Function(String) getDishes, String sourceName) {
      for (var country in _allCountries) {
        final dishes = getDishes(country);
        for (var dish in dishes) {
          if (dish["name"] != null && dish["name"]!.toLowerCase().contains(lowerQuery)) {
            // Create a copy to avoid modifying original or add metadata if needed
            results.add({
              "name": dish["name"]!,
              "desc": dish["desc"] ?? "",
              "image": dish["image"] ?? "",
              "fullRecipe": dish["fullRecipe"] ?? "",
              "country": country,
              "category": sourceName,
            });
          }
        }
      }
    }

    searchInSource(PastriesData.getDishes, "Pastries");
    searchInSource(TraditionalMealsData.getDishes, "Traditional Meals");
    searchInSource(SaltyDishesData.getDishes, "Salty Dishes");
    searchInSource(SweetDishesData.getDishes, "Sweet Dishes");

    setState(() {
      _searchResults = results;
      _hasSearched = true;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SEARCH RECIPES",
          style: GoogleFonts.cinzel(
            color: AppTheme.champagneGold,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: AppTheme.deepCharcoal),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
                border: Border.all(color: AppTheme.champagneGold.withOpacity(0.3), width: 1),
              ),
              child: TextField(
                controller: _searchController,
                autofocus: true,
                style: GoogleFonts.lato(color: AppTheme.deepCharcoal),
                decoration: InputDecoration(
                  hintText: "Search for a recipe...",
                  hintStyle: TextStyle(
                     color: Colors.grey[400],
                     fontFamily: 'Lato',
                  ),
                  prefixIcon: const Icon(Icons.search, color: AppTheme.champagneGold),
                  suffixIcon: _searchController.text.isNotEmpty 
                    ? IconButton(
                        icon: const Icon(Icons.clear, color: Colors.grey),
                        onPressed: () {
                          _searchController.clear();
                          _performSearch("");
                        },
                      )
                    : null,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
                ),
                onChanged: _performSearch,
                onSubmitted: _performSearch,
              ),
            ),
          ),
          Expanded(
            child: _hasSearched && _searchResults.isEmpty
                ? Center(
                    child: Text(
                      "Nothing found",
                      style: GoogleFonts.playfairDisplay(
                        color: Colors.red, // Requested red color
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      final dish = _searchResults[index];
                      return SearchResultCard(
                        name: dish["name"]!,
                        description: dish["desc"]!,
                        country: dish["country"]!,
                        category: dish["category"]!,
                        imagePath: dish["image"],
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DishDetailScreen(
                                title: dish["name"]!, 
                                description: dish["desc"]!,
                                imagePath: dish["image"],
                                recipeDetails: dish["fullRecipe"] ?? "Recipe details available.",
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class SearchResultCard extends StatelessWidget {
  final String name;
  final String description;
  final String? imagePath;
  final String country;
  final String category;
  final VoidCallback onTap;

  const SearchResultCard({
    super.key,
    required this.name,
    required this.description,
    this.imagePath,
    required this.country,
    required this.category,
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
          height: 130, 
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
              // Image
              Container(
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  image: imagePath != null && imagePath!.isNotEmpty
                      ? DecorationImage(
                          image: AssetImage(imagePath!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: (imagePath == null || imagePath!.isEmpty)
                    ? const Icon(Icons.restaurant, color: Colors.white24, size: 40)
                    : null,
              ),
              
              // Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.playfairDisplay(
                          color: AppTheme.warmIvory,
                          fontSize: 18, // Slightly smaller
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "$country • $category",
                         style: GoogleFonts.lato(
                          color: AppTheme.champagneGold,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Expanded(
                        child: Text(
                          description,
                          style: GoogleFonts.lato(
                            color: AppTheme.warmIvory.withOpacity(0.7),
                            fontSize: 12,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
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
