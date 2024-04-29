import 'package:digital_code_training/helpers/spacing.dart';
import 'package:digital_code_training/screens/login/widgets/email_and_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../constants/styles.dart';
import '../../helpers/app_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Image.asset("assets/login.png"),
              verticalSpace(15),
              const EmailAndPasswords(),
              verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyles.font14grey700Weight,
                  ),
                  horizontalSpace(5),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kHome,
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyles.font14Orange700Weight,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
