import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundedPasswordFieldController extends GetxController {
  bool IsVisible = false;
  // ignore: non_constant_identifier_names
  ChangeVisibility() {
    IsVisible = !IsVisible;
    update();
  }
}
