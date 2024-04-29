import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/styles.dart';
import '../../../helpers/spacing.dart';

class HotDealsWidget extends StatelessWidget {
  final String assetName;
  const HotDealsWidget({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: 130.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: babyBlue)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120.h,
            width: 110.w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      assetName,
                    ))),
          ),
          verticalSpace(10),
          SizedBox(
            width: 100.w,
            child: Text(
              "Nike Air Max 270 React ENG",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyles.font12DarkBlue700Weight,
            ),
          ),
          SizedBox(
            height: 20,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Icon(
                    Icons.star,
                    color: orange,
                  );
                }),
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
  }
}
