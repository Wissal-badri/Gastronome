import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronome/theme/app_theme.dart';
import 'package:gastronome/screens/category_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GASTRONÔME"),
        // Notification icon removed
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            // Centered Classy Slogan
            Center(
              child: Text(
                "Discover the art of cooking.",
                textAlign: TextAlign.center,
                style: GoogleFonts.greatVibes( 
                  fontSize: 32, 
                  color: AppTheme.deepCharcoal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Classy Search Bar
            const ClassySearchBar(),
            
            const SizedBox(height: 32),
            
            // Categories Header - All Caps, Removed "See all"
            Row(
              children: [
                Text(
                  "CATEGORIES",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    letterSpacing: 2.0, // Added spacing for classy caps look
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Categories List
            const CategoryList(),
          ],
        ),
      ),
    );
  }
}

class ClassySearchBar extends StatelessWidget {
  const ClassySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
        autofocus: false, // Explicitly disable autofocus
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: "Search for a recipe...",
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontFamily: 'Lato',
          ),
          prefixIcon: const Icon(Icons.search, color: AppTheme.champagneGold),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  final List<Map<String, dynamic>> categories = const [
    {"name": "Pastries", "id": "pastries", "icon": Icons.cake_outlined},
    {"name": "Traditional Meals", "id": "traditional", "icon": Icons.restaurant_menu},
    {"name": "Salty Dishes", "id": "salty", "icon": Icons.dinner_dining_outlined},
    {"name": "Spicy Dishes", "id": "spicy", "icon": Icons.whatshot_outlined},
    {"name": "Sweet Dishes", "id": "sweet", "icon": Icons.icecream_outlined},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: categories.map((cat) => CategoryCard(
        title: cat["name"],
        icon: cat["icon"],
        onTap: () {
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen(categoryName: cat["name"], categoryId: cat["id"])),
              );
        },
      )).toList(),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24), // Increased marking for floating effect
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          height: 90,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            // Increased transparency
            color: AppTheme.richEspresso.withOpacity(0.7), 
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppTheme.champagneGold.withOpacity(0.6), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25), // Stronger shadow
                blurRadius: 20, // More blur for floating
                offset: const Offset(0, 10), // Shadow 'under' it
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(icon, color: AppTheme.champagneGold, size: 32),
              
              const SizedBox(width: 20),
              
              // Text Content
              Expanded(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Text(
                        title,
                        style: GoogleFonts.cormorantGaramond(
                          color: AppTheme.warmIvory,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Subtitle in small bold font
                      Text(
                        "DISCOVER MORE",
                        style: GoogleFonts.lato(
                          color: AppTheme.champagneGold,
                          fontSize: 10,
                          fontWeight: FontWeight.bold, // Bold but not italic
                          letterSpacing: 1.0,
                        ),
                      ),
                   ],
                ),
              ),
              
              // Big Arrow in Circle (Right)
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.champagneGold),
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppTheme.champagneGold,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
