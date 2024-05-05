import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/main.dart';
import 'package:islami_application/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  ThemeBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.ChangeTheme(ThemeMode.light);
                },
                child: Text(
                  "Light",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.themeMode == ThemeMode.light
                        ? MyThemeData.yellowColor
                        : MyThemeData.primaryColor,
                  ),
                ),
              ),
              if (provider.themeMode == ThemeMode.light) ...[
                const Icon(Icons.done,
                    size: 35, color: MyThemeData.yellowColor),
              ]
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  provider.ChangeTheme(ThemeMode.dark);
                },
                child: Text(
                  "Dark",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.themeMode == ThemeMode.dark
                        ? MyThemeData.yellowColor
                        : MyThemeData.primaryColor,
                  ),
                ),
              ),
              if (provider.themeMode == ThemeMode.dark) ...[
                const Icon(Icons.done,
                    size: 35, color: MyThemeData.yellowColor
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
