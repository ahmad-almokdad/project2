import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  static const List<Tab> tabs = [
    Tab(
      child: Text(
        'COAT',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        'JACKET',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        'DRESS',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        'JUMPSUIT',
        style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text(
        'SHIRT',
        style: TextStyle(color: Colors.black),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const TabBar(
      indicatorColor: Colors.black54,
      labelColor: Colors.blueAccent,
      isScrollable: true,
      tabs: tabs,
    );
  }
}
