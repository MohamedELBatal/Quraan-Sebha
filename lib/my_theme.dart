import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),
      bodySmall: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.w500),
    ),
    brightness: Brightness.light,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black87),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
