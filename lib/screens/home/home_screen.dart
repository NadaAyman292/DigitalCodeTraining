import 'package:digital_code_training/helpers/spacing.dart';
import 'package:digital_code_training/screens/home/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/about_us_widget.dart';
import 'widgets/categories_item.dart';
import 'widgets/custom_home_row.dart';
import 'widgets/custom_smooth_page_indicator.dart';
import 'widgets/hot_deals_widget.dart';
import 'widgets/most_popular_widget.dart';
import 'widgets/sale_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> products = [
      "assets/product1.png",
      "assets/product2.png",
      "assets/product3.png",
      "assets/product4.png"
    ];
    final controller = PageController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              verticalSpace(50),
              const CustomHomeRow(),
              verticalSpace(30),
              SizedBox(
                height: 170.h,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 4,
                  itemBuilder: (context, int index) {
                    return const SaleItemImage();
                  },
                ),
              ),
              verticalSpace(15),
              CustomSmoothPageIndicator(
                controller: controller,
              ),
              const CustomText(text1: "Categories", text2: "View all"),
              verticalSpace(15),
              const CategoriesItem(),
              verticalSpace(15),
              const CustomText(text1: "Most Popular", text2: "View all"),
              verticalSpace(15),
              MostPopularWidget(),
              verticalSpace(15),
              const CustomText(text1: "About Us", text2: ""),
              verticalSpace(15),
              const AboutUsWidget(),
              verticalSpace(15),
              const CustomText(
                  text1: "Most Popular For Woman", text2: "See More"),
              verticalSpace(10),
              const MostPopularWidget(),
              verticalSpace(15),
              const CustomText(
                  text1: "Most Popular For Man", text2: "See More"),
              verticalSpace(10),
              const MostPopularWidget(),
              verticalSpace(15),
              const CustomText(text1: "Hot Deals", text2: "See More"),
              verticalSpace(10),
              GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10), // Spacing between rows
                  itemBuilder: (context, index) {
                    return HotDealsWidget(
                      assetName: products[index],
                    );
                  }),
              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }
}
