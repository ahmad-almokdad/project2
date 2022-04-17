import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controller/rounded_passwordfield_controller.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final ValueChanged<String> OnChanged;
  final bool confirmation;

  RoundedPasswordField({
    // ignore: non_constant_identifier_names
    required this.OnChanged,
    required this.confirmation,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RoundedPasswordFieldController>(
      init: RoundedPasswordFieldController(),
      builder: (controller) => TextFieldContainer(
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          onChanged: OnChanged,
          obscureText: !controller.IsVisible,
          decoration: InputDecoration(
            hintText: confirmation ? 'Confirm Password ' : 'Password',
            icon: const Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                controller.IsVisible ? Icons.visibility_off : Icons.visibility,
                color: kPrimaryColor,
              ),
              onPressed: () {
                controller.ChangeVisibility();
              },
            ),
          ),
        ),
      ),
    );
  }
}
