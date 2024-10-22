import 'package:ecommerce/features/home/presentation/screens/widget/all_featured.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/categories.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/dealview.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/flat_heels.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/listview_products.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/new_arrivals.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/offer_widget.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/special_offers.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/sponser.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            AllFeatured(),
            Categories(),
            OfferWidget(),
            DealView(
              icon: Icons.timer,
              suptitle: '22h 55m 20s remaining',
              title: 'Deal of the Day',
              color: Color(0xff4392F9),
            ),
            SizedBox(height: 20),
            ListViewProducts(),
            SizedBox(height: 20),
            SpecialOffers(),
            SizedBox(height: 20),
            FlatHeels(),
            SizedBox(height: 20),
            DealView(
              icon: Icons.date_range_outlined,
              suptitle: 'Last Date 29/02/22',
              title: 'Trending Products ',
              color: Color(0xffFD6E87),
            ),
            SizedBox(height: 20),
            ListViewProducts(),
            NewArrivals(),
            Sponser(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
