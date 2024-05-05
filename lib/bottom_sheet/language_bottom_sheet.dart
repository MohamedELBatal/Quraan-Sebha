import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/my_theme.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});


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
                  provider.changeLanguage("en");
                },
                child: Text(
                  "English",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.languageCode == "en"
                        ? MyThemeData.yellowColor
                        : MyThemeData.primaryColor,
                  ),
                ),
              ),
              if (provider.languageCode == "en") ...[
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
                  provider.changeLanguage("ar");
                },
                child: Text(
                  "Arabic",
                  style: GoogleFonts.elMessiri(
                    fontSize: 30,
                    color: provider.languageCode == "ar"
                        ? MyThemeData.yellowColor
                        : MyThemeData.primaryColor,
                  ),
                ),
              ),
              if (provider.languageCode == "ar") ...[
                const Icon(Icons.done,
                    size: 35, color: MyThemeData.yellowColor),
              ]
            ],
          ),
        ],
      ),
    );
  }
}
