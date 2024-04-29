import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final Color? borderColor;
  final TextStyle? hintStyle;
  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.prefixIcon,
      this.obscureText = false,
      this.validator,
      this.controller,
      this.keyboardType,
      this.prefixIconColor,
      this.borderColor,
      this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5),
        hintText: hintText,
        hintStyle: hintStyle ?? TextStyles.font12grey400Weight,
        prefixIcon: Icon(
          prefixIcon,
          color: prefixIconColor ?? grey,
          size: 24,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: borderColor ?? babyBlue),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: borderColor ?? babyBlue),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: babyBlue),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
