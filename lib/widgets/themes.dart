import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple[200],
          foregroundColor: Colors.white),
      fontFamily: GoogleFonts.lato().fontFamily,
    );
  }
}
