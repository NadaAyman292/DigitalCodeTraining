import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const CustomButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonWidth,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 5.0))),
          backgroundColor: MaterialStateProperty.all(backgroundColor ?? orange),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(
                horizontal: horizontalPadding?.w ?? 12.w,
                vertical: verticalPadding?.h ?? 14.h),
          ),
          fixedSize: MaterialStateProperty.all(
            Size(buttonWidth?.w ?? double.maxFinite, buttonHeight ?? 50.h),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: textStyle,
        ));
  }
}
