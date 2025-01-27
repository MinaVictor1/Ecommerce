import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/core/widgets/app_text_button.dart';
import 'package:ecommerce/core/widgets/text_form_field.dart';
import 'package:ecommerce/features/admin/logic/cubit/add_product_cubit.dart';
import 'package:ecommerce/features/admin/presentation/categories/widgets/upload_category_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductBottomSheet extends StatefulWidget {
  const AddProductBottomSheet({super.key});

  @override
  State<AddProductBottomSheet> createState() => _AddProductBottomSheetState();
}

class _AddProductBottomSheetState extends State<AddProductBottomSheet> {
  @override
  void dispose() {
    context.read<AddProductCubit>().nameCategoryController.dispose();
    context.read<AddProductCubit>().priceCategoryController.dispose();
    context.read<AddProductCubit>().descriptionCategoryController.dispose();
    context.read<AddProductCubit>().idCategoryController.dispose();
    context.read<AddProductCubit>().stockCategoryController.dispose();
    context.read<AddProductCubit>().categoryCategoryController.dispose();
    context.read<AddProductCubit>().imageUrlCategoryController.dispose();
    context.read<AddProductCubit>().ratingCategoryController.dispose();
    context.read<AddProductCubit>().createdAtCategoryController.dispose();
    context.read<AddProductCubit>().updatedAtCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          controller: context.read<AddProductCubit>().nameCategoryController,
          hintText: 'Product Name',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: context.read<AddProductCubit>().priceCategoryController,
          hintText: 'Product Price',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller:
              context.read<AddProductCubit>().descriptionCategoryController,
          hintText: 'Descrption',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextFormField(
          controller: context.read<AddProductCubit>().idCategoryController,
          hintText: 'Category Id',
          validator: (p0) {},
        ),
        const SizedBox(
          height: 15,
        ),
        AppTextButton(
          onPressed: () async {
            await context.read<AddProductCubit>().addProduct();
          },
          backgroundColor: Colors.white,
          borderRadius: 15,
          buttonText: "Add Product",
          textStyle: TextStyles.font12BlackRegular,
        ),
      ],
    );
  }
}
