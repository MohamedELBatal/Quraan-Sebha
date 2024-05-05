import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String languageCode = "en";
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String langCode){
    languageCode = langCode;
    notifyListeners();
  }
  void ChangeTheme(ThemeMode mode){
    themeMode = mode;
    notifyListeners();
  }
  String getBackgroundPath(){
    if(themeMode==ThemeMode.light){
      return "assets/images/bg.png";
    }else{
      return "assets/images/dark_bg.png";
    }
  }
}