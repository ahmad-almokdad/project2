import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Search/body.dart';
import 'package:flutter_auth/constants.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
