import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CounterController {
  RxInt count = 0.obs;
  RxBool isDark = false.obs;

  void incremet() {
    count++;
  }

  void changeTheme()
   {
    isDark.value=!isDark.value;
    Get.changeThemeMode(isDark.value?ThemeMode.light:ThemeMode.dark);
  }
}
