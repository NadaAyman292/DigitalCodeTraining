import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../../../helpers/spacing.dart';

class MostPopularWidget extends StatelessWidget {
  const MostPopularWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> mostPopular = [
      "assets/categories.png",
      "assets/product1.png",
      "assets/product2.png",
      "assets/product3.png",
      "assets/product4.png"
    ];
    return SizedBox(
      height: 250.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.topCenter,
              width: 130.w,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: babyBlue)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              mostPopular[index],
                            ))),
                  ),
                  verticalSpace(10),
                  SizedBox(
                    width: 150.w,
                    child: Text(
                      "FS - Nike Air Max 270 React",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyles.font12DarkBlue700Weight,
                    ),
                  ),
                  verticalSpace(10),
                  Text(
                    '\$299.43',
                    style: TextStyles.font12Orange700Weight,
                  ),
                  verticalSpace(10),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    Text(
                      '\$534.33',
                      style: TextStyles.font12grey400Weight.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    horizontalSpace(5),
                    Text(
                      "24% Off",
                      style: TextStyles.font12Red700Weight,
                    )
                  ])
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return horizontalSpace(10);
          },
          itemCount: 5),
    );
  }
}
