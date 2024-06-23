import 'package:flutter/cupertino.dart';

class ThemeProvider extends ChangeNotifier{
  bool isThemeDark = false;

  void changeTheme(bool value)
  {
    isThemeDark = value;
    notifyListeners();
  }
}