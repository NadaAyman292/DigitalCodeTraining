import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  final PageController controller;
  const CustomSmoothPageIndicator({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
          activeDotColor: orange,
          dotColor: greyColor,
          dotHeight: 8,
          dotWidth: 8,
          expansionFactor: 2),
    );
  }
}
