import 'package:flutter/material.dart';

class BmiProvider with ChangeNotifier {
  bool isSwitched = false;
  ThemeMode tm = ThemeMode.light;

  void isSwitch(value) {
    isSwitched=value;
    if (isSwitched == false) {
      tm = ThemeMode.light;
    } else {
      tm = ThemeMode.dark;
    }
    notifyListeners();
  }
}
