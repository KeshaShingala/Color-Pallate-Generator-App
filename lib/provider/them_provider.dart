
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modal/them_modal.dart';

class ThemeProvider extends ChangeNotifier {
  ThemModal themdata = ThemModal(isDark: true);

  void changeTheme() {
    themdata.isDark = !themdata.isDark;
    notifyListeners();
  }
}