import 'package:ecommerce/core/theme/colors.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProductItemData extends StatelessWidget {
  const ProductItemData({
    required this.productName,
    required this.productPrice,
    required this.productCategory,
    super.key,
  });
  final String productName;
  final String productPrice;
  final String productCategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productName,
          style: TextStyles.font16BlackSemiBold,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        Text(
          productCategory,
          style:
              TextStyles.font12BlackRegular.copyWith(color: ColorsManager.gray),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          productPrice,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style:
              TextStyles.font12BlackRegular.copyWith(color: ColorsManager.gray),
        ),
      ],
    );
  }
}
