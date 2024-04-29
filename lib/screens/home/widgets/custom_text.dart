import 'package:flutter/material.dart';

import '../../../constants/styles.dart';

class CustomText extends StatelessWidget {
  final String text1;
  final String text2;
  const CustomText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: TextStyles.font18VeryDarkGrey500Weight,
        ),
        Text(
          text2,
          style: TextStyles.font14Orange500Weight,
        )
      ],
    );
  }
}
