import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback onPress;

  const AlreadyHaveAnAccountCheck(
      {Key? key, required this.login, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ?  " : "Already have an Account ?  ",
          style: const TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login ? "Sing Up" : "Sign In",
            style: const TextStyle(
                color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
