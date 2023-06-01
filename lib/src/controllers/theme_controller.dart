import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier{
  bool _isDarkMode = false;

  bool get isDarkMode {
    return _isDarkMode;
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}