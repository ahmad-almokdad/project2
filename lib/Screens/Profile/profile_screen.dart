import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Profile/body.dart';
import 'package:flutter_auth/constants.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
