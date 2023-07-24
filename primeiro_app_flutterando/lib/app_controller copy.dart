import 'package:flutter/material.dart';

class AppControllerPratica extends ChangeNotifier {
  static AppControllerPratica instance = AppControllerPratica();

  bool isDarkTheme = false;
    changeTheme() {
      isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}