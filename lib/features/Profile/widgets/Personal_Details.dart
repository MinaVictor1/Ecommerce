import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/text_form_field.dart';

class PersonalData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text("Personal Details", style: TextStyles.font24BlackBold),

        const SizedBox(height: 20),
        Text("Email Address", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'mariamsamy@gmail.com',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
        Text("Password", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: '***********',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppTextButton(
              buttonWidth: 150,
              buttonText: 'Change Password',
              backgroundColor: Colors.transparent,
              textStyle: const TextStyle(
                  color: ColorsManager.red,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorsManager.red,
                  decorationThickness: 2),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
