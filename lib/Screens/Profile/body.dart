import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Profile/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Hello from Profile Page !")],
      ),
    );
  }
}