import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';

class RoundedInputFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? Function(String?)? validator;
  final TextInputType KeyboardType;
  final ValueChanged<String> OnChanged;

  RoundedInputFeild({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.OnChanged,
   required this.validator,
    required this.KeyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextFieldContainer(
      child: TextFormField(
        validator: validator,
        keyboardType: KeyboardType,
        onChanged: OnChanged,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
