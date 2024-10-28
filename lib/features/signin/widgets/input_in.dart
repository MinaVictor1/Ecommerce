import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class InputsSignIn extends StatefulWidget {
  const InputsSignIn({
    super.key,
  });

  @override
  State<InputsSignIn> createState() => _InputsSignInState();
}

class _InputsSignInState extends State<InputsSignIn> {
  bool isObscureTextPassword = true;
  bool isObscureTextConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            backgroundColor: ColorsManager.offWhite,
            prefixIcon: const Icon(Icons.person_rounded ,
              color: ColorsManager.lighterBlack,),
            hintText: 'Username or Email',
            hintStyle: TextStyles.font15grayRegular,
            validator: (String) {},
          ),
          const SizedBox(height: 30),
          AppTextFormField(
            hintText: " Password",
            hintStyle: TextStyles.font15grayRegular,
            isObscureText: isObscureTextPassword,
            validator: (p0) {},
            backgroundColor: ColorsManager.offWhite,
            prefixIcon: const Icon(Icons.lock,
              color: ColorsManager.lighterBlack,),
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

        ],
      ),
    );
  }
}