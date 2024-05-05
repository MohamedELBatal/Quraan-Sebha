import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color primaryDarkColor = Color(0xFF141A2E);
  static const Color blackColor = Color(0xFF242424);
  static const Color yellowColor = Colors.amber;
  static ThemeData lighttheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge:
          GoogleFonts.elMessiri(fontSize: 30, fontWeight: FontWeight.bold),
      bodyMedium:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600),
      bodySmall:
          GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w500),
    ),
    brightness: Brightness.light,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
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
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: const Color(0xFFFACC1D),
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: const Color(0xFFFACC1D),
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: const Color(0xFFFACC1D),
      ),
    ),
    brightness: Brightness.dark,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      backgroundColor: primaryDarkColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      titleTextStyle: GoogleFonts.elMessiri(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}
