import 'package:flutter/material.dart';

class TabbarContent extends StatelessWidget {
  List<Widget> tabsContent = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.amberAccent,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.blueGrey,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: tabsContent,
    );
  }
}
