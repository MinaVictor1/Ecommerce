import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/upload_category_image.dart';
import 'package:flutter/material.dart';

class AddProductBottomSheet extends StatefulWidget {
  const AddProductBottomSheet({super.key});

  @override
  State<AddProductBottomSheet> createState() => _AddProductBottomSheetState();
}

class _AddProductBottomSheetState extends State<AddProductBottomSheet> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller1 = TextEditingController();
    TextEditingController? controller2 = TextEditingController();
    TextEditingController? controller3 = TextEditingController();
    TextEditingController? controller4 = TextEditingController();

    return Column(
      children: [
        Text('Add Product', style: TextStyles.font15BlackMedium),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Add Photo', style: TextStyles.font14BlackRegular),
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
        const SizedBox(
          height: 10,
        ),
        const UploadAdminImage(),
        const SizedBox(
          height: 10,
        ),
        Text('Add the product name', style: TextStyles.font12GreyMedium),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller1,
          hintText: 'Product Name',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller2,
          hintText: 'Product Price',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller3,
          hintText: 'Descrption',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: controller4,
          hintText: 'Category Id',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 15,
        ),
        AppTextButton(
          onPressed: () async {},
          backgroundColor: Colors.white,
          borderRadius: 15,
          buttonText: "Add Product",
          textStyle: TextStyles.font12BlackRegular,
        ),
      ],
    );
  }
}
