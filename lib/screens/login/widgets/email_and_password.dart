import 'package:digital_code_training/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/styles.dart';
import '../../../helpers/app_regex.dart';
import '../../../helpers/app_router.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_formfield.dart';

class EmailAndPasswords extends StatefulWidget {
  const EmailAndPasswords({super.key});

  @override
  State<EmailAndPasswords> createState() => _EmailAndPasswordsState();
}

class _EmailAndPasswordsState extends State<EmailAndPasswords> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "Please Enter a valied Email";
              }
              return null;
            },
            hintText: "Your Email",
            prefixIcon: Icons.email_outlined,
          ),
          verticalSpace(10),
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
            obscureText: true,
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
          ),
          verticalSpace(30),
          CustomButton(
            buttonText: "Login",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                GoRouter.of(context).push(
                  AppRouter.kRegister,
                );
              }
            },
            textStyle: TextStyles.font16White700Weight,
          )
        ],
      ),
    );
  }
}
