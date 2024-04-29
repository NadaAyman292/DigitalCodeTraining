import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/spacing.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Accessories",
      "clocks",
      "Furniture",
      "Accessories",
      "clocks",
      "Furniture"
    ];
    return SizedBox(
      height: 75,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return horizontalSpace(10);
          },
          padding: EdgeInsets.zero,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Image.asset(
                  "assets/categories.png",
                  height: 80,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: 2.h,
                  left: 10.w,
                  child: Text(categories[index]),
                )
              ],
            );
          }),
    );
  }
}
