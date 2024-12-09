import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/features/admin/presentation/products/widgets/product_item_bar.dart';
import 'package:ecommerce/features/admin/presentation/products/widgets/product_item_data.dart';
import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    required this.isLoading,
    super.key,
  });
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: isLoading,
      child: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(0.3),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(1),
            bottomRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child: Column(
          children: [
            const ProductItemBar(),
            CachedNetworkImage(
              imageUrl:
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.facebook.com%2FProductshop%2F&psig=AOvVaw0bfSuwUadQcAFLx5vCSnBN&ust=1732996575546000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCPCdwr6pgooDFQAAAAAdAAAAABAE',
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            const ProductItemData(
              productName: 'Product Name',
              productCategory: 'Product Category',
              productPrice: 'Product Price',
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
