import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/buying_product.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/delivery_time.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/image_slides.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/item_info.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/item_price.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/product_details.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/shop_appbar.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/choose_size.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/similiar_and_compare.dart';
import 'package:ecommerce/features/customer/presentation/shop/presentation/widgets/star_rating.dart';
import 'package:flutter/material.dart';

import 'widgets/product_feature.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ShopAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSlides(),
                ChooseSize(),
                ItemInfo(
                  title: 'NIke Sneakers',
                  subTitle: "Vision Alta Men’s Shoes Size (All Colours)",
                ),
                StarRating(rating: 4.5, totalReviews: 52555),
                ItemPrice(
                    mainPrice: "2000", discountPrice: "1000", percentage: "50"),
                ProductDetails(
                  productDescription:
                      "Perhaps the most iconic sneaker of all-time, this original ${"Chicago"}? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ",
                ),
                ProductFeature(),
                BuyingProduct(),
                DeliveryTime(),
                SimilarAndCompare()
              ]),
        ),
      ),
    );
  }
}
