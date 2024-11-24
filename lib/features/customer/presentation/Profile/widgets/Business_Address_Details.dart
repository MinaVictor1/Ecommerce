import 'package:ecommerce/core/theme/colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';
import '../../../../../core/widgets/text_form_field.dart';

class BusinessAddressData extends StatelessWidget {
  const BusinessAddressData({super.key});

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
        Text("Pincode ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: '450116 ',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
        Text("Address  ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: '216 St Pauls Rd',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
        Text("City  ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'London ',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
        Text("State   ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'N1 2LL',
          hintStyle: TextStyles.font15grayRegular,
          validator: (String) {},
        ),
        const SizedBox(
          height: 10,
        ),
        Text("Country  ", style: TextStyles.font12GreyMedium),
        AppTextFormField(
          backgroundColor: ColorsManager.offWhite,
          hintText: 'United Kingdom',
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
