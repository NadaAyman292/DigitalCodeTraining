import 'package:digital_code_training/helpers/spacing.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../constants/styles.dart';
import '../../helpers/app_regex.dart';
import '../../helpers/app_router.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_formfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Image.asset("assets/register.png"),
              verticalSpace(15),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    //**FULL NAME  */
                    CustomTextFormField(
                      keyboardType: TextInputType.name,
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please Enter a valied Name";
                        }
                        return null;
                      },
                      hintText: "Full Name",
                      prefixIcon: Icons.person_outline,
                    ),
                    verticalSpace(10),
                    //**EMAIL */
                    CustomTextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isEmailValid(value)) {
                          return "Please Enter a valied Email";
                        }
                        return null;
                      },
                      controller: emailController,
                      hintText: "Your Email",
                      prefixIcon: Icons.email_outlined,
                    ),
                    verticalSpace(10),
                    //**PASSWORD */
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.hasLowerCase(value) ||
                            !AppRegex.hasUpperCase(value) ||
                            !AppRegex.hasNumber(value) ||
                            !AppRegex.hasSpecialCharacter(value) ||
                            !AppRegex.hasMinLength(value) ||
                            !AppRegex.hasNumber(value)) {
                          return "Please Enter a valied Password";
                        }
                        return null;
                      },
                      controller: passwordController,
                      obscureText: true,
                      hintText: "Password",
                      prefixIcon: Icons.lock_outline,
                    ),
                    verticalSpace(10),
                    //**PHONE  */
                    CustomTextFormField(
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            !AppRegex.isPhoneNumberValid(value)) {
                          return "Please Enter a valied Phone";
                        }
                        return null;
                      },
                      controller: phoneController,
                      hintText: "Phone",
                      prefixIcon: Icons.phone_outlined,
                    ),

                    verticalSpace(30),
                    CustomButton(
                      buttonText: "Sign Up",
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          GoRouter.of(context).push(
                            AppRouter.kHome,
                          );
                        }
                      },
                      textStyle: TextStyles.font16White700Weight,
                    )
                  ],
                ),
              ),
              verticalSpace(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " have an account?",
                    style: TextStyles.font14grey700Weight,
                  ),
                  horizontalSpace(5),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.klogin,
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyles.font14Orange700Weight,
                    ),
                  )
                ],
              ),
              verticalSpace(30)
            ],
          ),
        ),
      ),
    );
  }
}
