import 'package:flutter/material.dart';
import 'package:islami_application/home/home.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadeth_details.dart';
import 'home/tabs/sebha_tab.dart';

void main() {
  runApp(const IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale("en"),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: MyThemeData.lighttheme,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        SebhaTab.routeName: (context) => const SebhaTab(),
        HadethDetails.routeName: (context) => const HadethDetails(),
      },
    );
  }
}
