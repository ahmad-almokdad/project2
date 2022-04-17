import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/HomePage/buttom_navigation_bar.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controller/tabbar_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final myTabs = Get.put(TabBarController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0),
          child: TabBar(
            indicatorColor: Colors.black54,
            labelColor: Colors.blueAccent,
            isScrollable: true,
            controller: myTabs.tabController,
            tabs: myTabs.tabs,
          ),
        ),
      ),
      body: TabBarView(
        controller: myTabs.tabController,
        children: myTabs.tabsContent,
      ),
      bottomNavigationBar: ButtomNavigationBar(),
    );
  }
}
