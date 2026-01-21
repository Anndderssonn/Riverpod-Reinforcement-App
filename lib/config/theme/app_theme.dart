import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    listTileTheme: const ListTileThemeData(iconColor: seedColor),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.comingSoon(),
      titleMedium: GoogleFonts.comicNeue(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: GoogleFonts.comicNeue(fontSize: 18),
      bodyMedium: GoogleFonts.comicNeue(fontSize: 14),
    ),
  );
}
