import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/home/home.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/sura_details.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
    );
  }
}
