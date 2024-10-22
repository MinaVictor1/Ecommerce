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
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllFeatured(),
          const Categories(),
          const OfferWidget(),
          // const DealView(
          //   icon: Icons.timer,
          //   suptitle: '22h 55m 20s remaining',
          //   title: 'Deal of the Day',
          //   color: Color(0xff4392F9),
          // ),
          //karol
          SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.46,
              child: const ListViewProducts()),
          const SpecialOffers(),
          const FlatHeels(),
          // const DealView(
          //   icon: Icons.date_range_outlined,
          //   suptitle: 'Last Date 29/02/22',
          //   title: 'Trending Products ',
          //   color: Color(0xffFD6E87),
          // ),
          // karol
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.46,
              child: const ListViewProducts()),
          const NewArrivals(),
          const Sponser(),
        ],
      ),
    );
  }
}
