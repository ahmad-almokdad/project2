import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Products/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text("Hello from  Page !")],
      ),
    );
  }
}
