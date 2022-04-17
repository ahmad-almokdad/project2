import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/LogIn/login_screen.dart';
import 'package:flutter_auth/Screens/SignUp/components/background.dart';
import 'package:flutter_auth/auth/auth_view_model.dart';
import 'package:flutter_auth/components/already_have_an_account_check.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: GetBuilder<AuthViewModel>(
          init: AuthViewModel(),
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.2,
              ),
              RoundedInputFeild(
                validator: null,
                hintText: "First Name",
                icon: Icons.account_box,
                OnChanged: (value) => controller.firstName = value,
                KeyboardType: TextInputType.emailAddress,
              ),
              RoundedInputFeild(
                validator: null,
                hintText: "Last Name",
                icon: Icons.account_box,
                OnChanged: (value) => controller.lastName = value,
                KeyboardType: TextInputType.emailAddress,
              ),
              RoundedInputFeild(
                  validator: null,
                  hintText: "Email",
                  icon: Icons.email,
                  OnChanged: (value) => controller.regEmail = value,
                  KeyboardType: TextInputType.emailAddress),
              RoundedPasswordField(
                OnChanged: (value) => controller.regPassword = value,
                confirmation: false,
              ),
              RoundedPasswordField(
                OnChanged: (value) => controller.confirmPassword = value,
                confirmation: true,
              ),
              RoundedButton(
                  color: kPrimaryColor,
                  textcolore: Colors.white,
                  press: () => controller.CreatAccount(),
                  text: "SIGNUP"),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                onPress: () => Get.offNamed("/login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
