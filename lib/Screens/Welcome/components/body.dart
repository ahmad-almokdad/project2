import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/LogIn/login_screen.dart';
import 'package:flutter_auth/Screens/SignUp/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome to Shopping spree "),
          Image.asset(
            "assets/images/HappyFamily.png",
            height: size.height * 0.4,
          ),
          RoundedButton(
              color: kPrimaryColor,
              textcolore: Colors.white,
              press: () => Get.off(() => LoginScreen()),
              text: 'LOGIN'),
          RoundedButton(
              color: kPrimaryLightColor,
              textcolore: Colors.black,
              press: () => Get.off(() => SignUpScreen()),
              text: 'SIGNUP'),
        ],
      ),
    ));
  }
}
