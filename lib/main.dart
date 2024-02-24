import 'package:flutter/material.dart';
import 'package:islami_application/home/home.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/providers/my_provider.dart';
import 'package:islami_application/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'hadeth_details.dart';
import 'home/tabs/sebha_tab.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: IslamiApp()));
}

class IslamiApp extends StatelessWidget {
  IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("${provider.languageCode}"),
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      theme: MyThemeData.lighttheme,
      themeMode: provider.themeMode,
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
