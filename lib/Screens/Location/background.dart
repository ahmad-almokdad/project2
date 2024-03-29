import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Center(
              child: Icon(
            Icons.gps_fixed,
            color: kPrimaryLightColor,
            size: 256,
          )),
          child
        ],
      ),
    );
  }
}
