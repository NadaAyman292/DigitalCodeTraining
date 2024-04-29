import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../../../helpers/spacing.dart';
import '../../../widgets/custom_text_formfield.dart';

class CustomHomeRow extends StatelessWidget {
  const CustomHomeRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 240.w,
          height: 40.h,
          child: CustomTextFormField(
            hintStyle: TextStyles.font12vertDarkGrey400Weight,
            hintText: "Search Product",
            borderColor: orange,
            prefixIcon: Icons.search,
            prefixIconColor: orange,
          ),
        ),
        horizontalSpace(15),
        CircleAvatar(
          backgroundColor: lightGrey,
          radius: 20.r,
          child: Image.asset("assets/filter.png"),
        ),
        horizontalSpace(5),
        const Icon(Icons.notifications_outlined)
      ],
    );
  }
}
