import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Cart/body.dart';
import 'package:flutter_auth/Screens/HomePage/buttom_navigation_bar.dart';
import 'package:flutter_auth/constants.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
