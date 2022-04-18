import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Products/body.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {
  var data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data[0].toString(),
        ),
        backgroundColor: kPrimaryLightColor,
        foregroundColor: kPrimaryColor,
        actions: [
          FlatButton(
            onPressed: () {},
            child: const Text(
              '+FILTERS',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
