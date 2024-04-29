import 'package:digital_code_training/constants/styles.dart';
import 'package:flutter/material.dart';

class SaleItemImage extends StatelessWidget {
  const SaleItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/image.png"),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Text(
            "Super Flash Sale \n 40% off",
            style: TextStyles.font24White700Weight,
          ),
        ),
      ],
    );
  }
}
