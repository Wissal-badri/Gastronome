import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gastronome/theme/app_theme.dart';

class DishDetailScreen extends StatelessWidget {
  final String title;
  final String description;
  final String? imagePath;
  final String recipeDetails;

  const DishDetailScreen({
    super.key,
    required this.title,
    required this.description,
    this.imagePath,
    required this.recipeDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false, 
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppTheme.warmIvory),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Image
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppTheme.richEspresso,
                image: imagePath != null 
                    ? DecorationImage(
                        image: AssetImage(imagePath!),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: imagePath == null 
                  ? const Center(child: Icon(Icons.restaurant, size: 60, color: Colors.white24))
                  : null,
            ),

            // Content
            Container(
              transform: Matrix4.translationValues(0, -30, 0),
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                color: AppTheme.warmIvory,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   // Title
                   Text(
                      title,
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.deepCharcoal,
                      ),
                   ),
                   const SizedBox(height: 8),
                   Text(
                      description,
                      style: GoogleFonts.lato(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: AppTheme.richEspresso.withOpacity(0.8),
                      ),
                   ),
                   const SizedBox(height: 24),
                   Divider(color: AppTheme.champagneGold.withOpacity(0.5)),
                   const SizedBox(height: 24),

                   // Recipe Details
                   Text(
                      "RECIPE & PREPARATION",
                      style: GoogleFonts.cinzel(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.champagneGold,
                        letterSpacing: 1.2,
                      ),
                   ),
                   const SizedBox(height: 16),
                   // Recipe Details with formatting
                   ..._buildFormattedRecipe(recipeDetails),
                   
                   const SizedBox(height: 30),
                   
                   // Bottom Back Button
                   Center(
                     child: TextButton.icon(
                       onPressed: () => Navigator.pop(context),
                       icon: const Icon(Icons.arrow_back, color: AppTheme.champagneGold),
                       label: Text(
                         "GO BACK",
                         style: GoogleFonts.cinzel(
                           color: AppTheme.champagneGold,
                           fontWeight: FontWeight.bold,
                           fontSize: 14,
                         ),
                       ),
                       style: TextButton.styleFrom(
                         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                         side: BorderSide(color: AppTheme.champagneGold.withOpacity(0.5)),
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                       ),
                     ),
                   ),
                   const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFormattedRecipe(String text) {
    final List<Widget> widgets = [];
    final lines = text.split('\n');

    for (var line in lines) {
      if (line.trim().isEmpty) {
        widgets.add(const SizedBox(height: 12));
        continue;
      }

      // Check for Titles (Ingredients, Method, Part X) -> Bold, Italic, Underlined
      if (line.trim().startsWith("Ingredients") || 
          line.trim().startsWith("Method") || 
          line.trim().startsWith("Part")) {
        widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8),
            child: Text(
              line.trim(),
              style: GoogleFonts.playfairDisplay( // Classy font for headers
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: AppTheme.deepCharcoal,
                decoration: TextDecoration.underline,
                decorationColor: AppTheme.champagneGold,
              ),
            ),
          ),
        );
      } 
      // Check for Subsections (For the...) -> Bold Only
      else if (line.trim().startsWith("For ")) {
         widgets.add(
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 4),
            child: Text(
              line.trim(),
              style: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppTheme.deepCharcoal,
              ),
            ),
          ),
        );
      }
      // Standard Text
      else {
        widgets.add(
          Text(
            line.trim(),
            style: GoogleFonts.lato( // Classy body font
              fontSize: 16,
              height: 1.5,
              color: AppTheme.deepCharcoal.withOpacity(0.9),
            ),
          ),
        );
      }
    }
    return widgets;
  }
}
