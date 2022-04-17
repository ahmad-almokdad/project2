import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Location/body.dart';
import 'package:flutter_auth/constants.dart';

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store Location'),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
