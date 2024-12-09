import 'package:ecommerce/core/helper/bottom_sheet/custom_bottom_sheet.dart';
import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/add_category_bottom_sheet.dart';
import 'package:flutter/material.dart';

class AddCategory extends StatelessWidget {
  const AddCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Get All Categories', style: TextStyles.font15BlackMedium),
        AppTextButton(
          onPressed: () {
            CustomBottomSheet.showModalBottomSheetContainer(
              context: context,
              backgroundColor: Colors.black,
              widget: const AddCategoryBottomSheet(),
            );
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
