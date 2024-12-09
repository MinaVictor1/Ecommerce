import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/upload_category_image.dart';
import 'package:flutter/material.dart';

class AddCategoryBottomSheet extends StatefulWidget {
  const AddCategoryBottomSheet({super.key});

  @override
  State<AddCategoryBottomSheet> createState() => _AddCategoryBottomSheetState();
}

class _AddCategoryBottomSheetState extends State<AddCategoryBottomSheet> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      children: [
        Text('Add Category', style: TextStyles.font15BlackMedium),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add Photo', style: TextStyles.font12BlackRegular),
            AppTextButton(
              onPressed: () {},
              backgroundColor: Colors.red,
              borderRadius: 15,
              buttonText: "Remove",
              buttonHeight: 50,
              buttonWidth: 70,
              textStyle: TextStyles.font12BlackRegular,
            ),
          ],
        ),
        const SizedBox(height: 10),
        const UploadAdminImage(),
        const SizedBox(height: 10),
        Text('Add the category name', style: TextStyles.font12BlackRegular),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller,
          hintText: 'Category Name',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 15,
        ),
        AppTextButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          borderRadius: 15,
          textStyle: TextStyles.font15BlackMedium,
          buttonText: "Add Category",
        ),
      ],
    );
  }
}
