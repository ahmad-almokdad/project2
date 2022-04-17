import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Cart/cart_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controller/buttom_navigatorbar_controller.dart';
import 'package:get/get.dart';

class ButtomNavigationBar extends StatelessWidget {
  List<BottomNavigationBarItem> navigatorItems = const [
    BottomNavigationBarItem(
        activeIcon: Text("Location"),
        icon: Icon(
          Icons.gps_fixed,
          color: kPrimaryColor,
        ),
        label: ''),
    BottomNavigationBarItem(
        activeIcon: Text("Account"),
        icon: Icon(
          Icons.person,
          color: kPrimaryColor,
          size: 24,
        ),
        label: ''),
    BottomNavigationBarItem(
        activeIcon: Text(
          "Cart",
        ),
        icon: Icon(
          Icons.local_grocery_store,
          color: kPrimaryColor,
        ),
        label: ''),
    BottomNavigationBarItem(
        activeIcon: Text(
          "Search",
        ),
        icon: Icon(
          Icons.search,
          color: kPrimaryColor,
        ),
        label: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtomNavigationBarController>(
      init: ButtomNavigationBarController(),
      builder: (controller) => BottomNavigationBar(
        backgroundColor: kPrimaryLightColor,
        items: navigatorItems,
        currentIndex: controller.navigatorValue,
        onTap: (value) {
          controller.changeSelectedValue(value);
          if (value == 0) Get.toNamed('/location');
          if (value == 1) Get.toNamed('/profile');
          if (value == 2) Get.toNamed('/cart');
          if (value == 3) Get.toNamed('/search');
        },
      ),
    );
  }
}
