import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class InputsSignUp extends StatefulWidget {
  const InputsSignUp({
    super.key,
  });

  @override
  State<InputsSignUp> createState() => _InputsSignUpState();
}

class _InputsSignUpState extends State<InputsSignUp> {
  bool isObscureTextPassword = true;
  bool isObscureTextConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          AppTextFormField(
            hintText: "Username or Email",
            hintStyle: TextStyles.font15grayRegular,
            validator: (p0) {},
            backgroundColor: ColorsManager.offWhite,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.moreGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            prefixIcon: const Icon(Icons.person, color: ColorsManager.gray),
          ),
          const SizedBox(
            height: 25,
          ),
          AppTextFormField(
            hintText: "Password",
            hintStyle: TextStyles.font15grayRegular,
            isObscureText: isObscureTextPassword,
            validator: (p0) {},
            backgroundColor: ColorsManager.offWhite,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.moreGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            prefixIcon: const Icon(Icons.person, color: ColorsManager.gray),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureTextPassword = !isObscureTextPassword;
                });
              },
              child: Icon(
                  isObscureTextPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: ColorsManager.gray),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          AppTextFormField(
            hintText: "Confirm Password",
            hintStyle: TextStyles.font15grayRegular,
            isObscureText: isObscureTextConfirmPassword,
            validator: (p0) {},
            backgroundColor: ColorsManager.offWhite,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.moreGray,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            prefixIcon: const Icon(Icons.person, color: ColorsManager.gray),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureTextConfirmPassword = !isObscureTextConfirmPassword;
                });
              },
              child: Icon(
                  isObscureTextConfirmPassword
                      ? Icons.visibility_off
                      : Icons.visibility,
                  color: ColorsManager.gray),
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
