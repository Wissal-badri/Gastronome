import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Palette de couleurs
  static const Color deepCharcoal = Color(0xFF1A1A1A); // Background
  static const Color warmIvory = Color(0xFFF5F1E8); // Text & Backgrounds
  static const Color champagneGold = Color(0xFFC8A75F); // Accents
  static const Color richEspresso = Color(0xFF4B3A2F); // Cards
  static const Color darkEmerald = Color(0xFF0C3B36); // Secondary Accent

  static ThemeData get luxuryTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: warmIvory, // Cream background requested
      primaryColor: warmIvory,
      colorScheme: const ColorScheme.light( // Switched to light scheme
        primary: deepCharcoal, // Dark text/elements on cream
        secondary: champagneGold,
        surface: warmIvory,
        onSurface: deepCharcoal,
        onPrimary: warmIvory,
      ),
      
      // Configuration des Textes
      textTheme: TextTheme(
        // Headers - Playfair Display (Classy)
        displayLarge: GoogleFonts.playfairDisplay(
          color: deepCharcoal,
          fontWeight: FontWeight.bold,
          fontSize: 32,
        ),
        displayMedium: GoogleFonts.playfairDisplay(
          color: deepCharcoal,
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
        
        // Body - Lato (Clean)
        bodyLarge: GoogleFonts.lato(
          color: deepCharcoal,
          fontSize: 16,
        ),
        bodyMedium: GoogleFonts.lato(
          color: deepCharcoal.withOpacity(0.8),
          fontSize: 14,
        ),
        
        // Details/Buttons - Cinzel (Luxury)
        labelLarge: GoogleFonts.cinzel(
          color: deepCharcoal,
          fontWeight: FontWeight.bold,
          fontSize: 14,
          letterSpacing: 1.2,
        ),
        
        titleMedium: GoogleFonts.playfairDisplay(
             color: deepCharcoal,
             fontSize: 20,
             fontWeight: FontWeight.bold
        ),
      ),
      
      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: warmIvory,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.cinzel(
          color: deepCharcoal,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.5,
        ),
        iconTheme: const IconThemeData(color: deepCharcoal),
      ),
      
      dividerColor: champagneGold.withOpacity(0.5),
    );
  }
}
