import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_application/home/home.dart';
import 'package:islami_application/my_theme.dart';
import 'package:islami_application/providers/my_provider.dart';
import 'package:islami_application/sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'hadeth_details.dart';
import 'home/tabs/sebha_tab.dart';

void main() {
  runApp(
    ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: const IslamiApp(),
    ),
  );
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) => MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.languageCode),
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
      ),
    );
  }
}
