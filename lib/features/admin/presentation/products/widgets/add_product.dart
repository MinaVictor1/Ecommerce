import 'package:ecommerce/core/helper/bottom_sheet/custom_bottom_sheet.dart';
import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/features/admin/presentation/products/widgets/add_product_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Get All Products', style: TextStyles.font15BlackMedium),
        AppTextButton(
          onPressed: () {
            CustomBottomSheet.showModalBottomSheetContainer(
                context: context,
                backgroundColor: ColorsManager.mainBlue,
                widget: const AddProductBottomSheet());
          },
          buttonWidth: 70,
          buttonHeight: 50,
          backgroundColor: ColorsManager.gray,
          buttonText: "Add",
          borderRadius: 15,
          textStyle: TextStyles.font14BlackRegular,
        ),
      ],
    );
  }
}
