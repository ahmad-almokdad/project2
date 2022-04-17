import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/LogIn/background.dart';
import 'package:flutter_auth/Screens/SignUp/signup_screen.dart';
import 'package:flutter_auth/auth/auth_view_model.dart';
import 'package:flutter_auth/components/already_have_an_account_check.dart';
import 'package:flutter_auth/components/customform.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name, password;
    Size size = MediaQuery.of(context).size;
    late TextEditingController _emailController;
    _emailController = TextEditingController();
    late TextEditingController _passwordController;
    _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              "assets/images/LOGIN.png",
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  GetBuilder<AuthViewModel>(
                    init: AuthViewModel(),
                    builder: (controller) => RoundedInputFeild(
                      hintText: "Email",
                      validator: (value) {
                        if (!GetUtils.isEmail(controller.email.toString()))
                          return "Email is not valid";
                      },
                      icon: Icons.person,
                      OnChanged: (value) => controller.email = value,
                      KeyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  GetBuilder<AuthViewModel>(
                    init: AuthViewModel(),
                    builder: (controller) => RoundedPasswordField(
                      OnChanged: (String value) => controller.password = value,
                      confirmation: false,
                    ),
                  ),
                  GetBuilder<AuthViewModel>(
                    builder: (controller) => RoundedButton(
                        color: kPrimaryColor,
                        textcolore: Colors.white,
                        press: () async {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState?.save();
                            bool isLogin = await controller.Login(
                                controller.email.toString(),
                                controller.password.toString());
                            if(isLogin){
                              //go to home page
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Error email or password',
                                  ),
                                ),
                              );
                            }


                          }

                          // submit();
                        },
                        text: 'LOGIN'),
                  ),
                ],
              ),

            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              onPress: () => Get.offNamed("/signup"),
            ),
          ],
        ),
      ),
    );
  }
}
