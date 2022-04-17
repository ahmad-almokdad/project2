import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TabBarController extends GetxController
    with SingleGetTickerProviderMixin {
  late TabController tabController;
  final List<Tab> tabs = [
    const Tab(
      child: Text(
        'COAT',
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Tab(
      child: Text(
        'JACKET',
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Tab(
      child: Text(
        'DRESS',
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Tab(
      child: Text(
        'JUMPSUIT',
        style: TextStyle(color: Colors.black),
      ),
    ),
    const Tab(
      child: Text(
        'SHIRT',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];
  final List<Widget> tabsContent = [
    InkWell(
      child: Container(
        color: Colors.amber,
      ),
      onTap: () => Get.toNamed('/products', arguments: ['COAT']),
    ),
    InkWell(
      child: Container(
        color: Colors.amberAccent,
      ),
      onTap: () => Get.toNamed('/products', arguments: ['JACKET']),
    ),
    InkWell(
      child: Container(
        color: Colors.blue,
      ),
      onTap: () => Get.toNamed('/products', arguments: ['DRESS']),
    ),
    InkWell(
      child: Container(
        color: Colors.blueAccent,
      ),
      onTap: () => Get.toNamed('/products', arguments: ['JUMPSUIT']),
    ),
    InkWell(
      child: Container(
        color: Colors.blueGrey,
      ),
      onTap: () => Get.toNamed('/products', arguments: ['SHIRT']),
    ),
  ];

  @override
  void onInit() {
    tabController = TabController(length: tabsContent.length, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
