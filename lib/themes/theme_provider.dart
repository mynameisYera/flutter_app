import 'package:flutter/material.dart';
import 'package:flutter_application_10/themes/dark_mode.dart';
import 'package:flutter_application_10/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMOde => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;

    notifyListeners();
  }

  void toggleTheme() {
    if(_themeData == lightMode) {
      themeData = darkMode;
    }else {
      themeData = lightMode;
    }
  }
}