import 'package:digital_code_training/constants/styles.dart';
import 'package:digital_code_training/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/about_us.png",
          fit: BoxFit.fitWidth,
        ),
        Positioned(
            top: 30.h,
            left: 15.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Who we are?",
                  style: TextStyles.font24White700Weight,
                ),
                SizedBox(
                  width: 220.w,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyles.font12White400Weight,
                  ),
                ),
                verticalSpace(15),
                Text(
                  "Read more",
                  style: TextStyles.font12Orange700Weight,
                )
              ],
            ))
      ],
    );
  }
}
