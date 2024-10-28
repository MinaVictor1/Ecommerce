import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../core/theme/styles.dart';
import '../../../core/widgets/text_form_field.dart';

class BankAccountData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Text("Business Address Details", style: TextStyles.font24BlackBold),
        const SizedBox(
          height: 20,
        ),

        Text("Bank Account Number ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'XXXXXXXXXXXXX ',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),

        Text("Account Holder’s Name", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'Abhiraj Sisodiya  ',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),

        Text("IFSC Codev", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'SBIN00428 ',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
