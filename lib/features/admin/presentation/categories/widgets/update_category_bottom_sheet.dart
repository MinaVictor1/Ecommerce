import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/upload_category_image.dart';
import 'package:flutter/material.dart';

class UpdateCategoryBottomSheet extends StatefulWidget {
  const UpdateCategoryBottomSheet({
    super.key,
  });
  @override
  State<UpdateCategoryBottomSheet> createState() =>
      _UpdateCategoryBottomSheetState();
}

class _UpdateCategoryBottomSheetState extends State<UpdateCategoryBottomSheet> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
      children: [
        Text('Update Category', style: TextStyles.font14WhiteSemiBold),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Update Photo', style: TextStyles.font15BlackMedium),
            AppTextButton(
              onPressed: () {},
              backgroundColor: Colors.red,
              borderRadius: 15,
              buttonText: "Remove",
              textStyle: TextStyles.font12BlackRegular,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const UploadAdminImage(),
        const SizedBox(
          height: 10,
        ),
        Text('Update the category name', style: TextStyles.font12BlackRegular),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller,
          hintText: 'Category Name',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          borderRadius: 15,
          buttonText: "Update A Category",
          textStyle: TextStyles.font12BlackRegular,
        ),
      ],
    );
  }
}
