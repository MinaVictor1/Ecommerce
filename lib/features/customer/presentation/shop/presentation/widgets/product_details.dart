import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String productDescription;

  const ProductDetails({super.key, required this.productDescription});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    final int maxLines = isExpanded ? 10 : 4;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 18,
        ),
        Text(
          "Product Details",
          style: TextStyles.font15BlackMedium,
        ),
        Text(
          widget.productDescription,
          maxLines: maxLines,
          style: TextStyles.font12BlackRegular,
          overflow: TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Less' : 'More',
            style: TextStyles.font12PinkRegular,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
