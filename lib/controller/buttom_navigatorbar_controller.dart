import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtomNavigationBarController extends GetxController {
  int navigatorValue = 0;
  void changeSelectedValue(int selectedValue) {
    navigatorValue = selectedValue;
    update();
  }
}
