import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/dealview.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/flat_heels.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/bottom.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/special_offers.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DealView(
            icon: Icons.timer,
            suptitle: '22h 55m 20s remaining',
            title: 'Deal of the Day',
            color: Color(0xff4392F9),
          ),
          SpecialOffers(),
          FlatHeels(),
          DealView(
            icon: Icons.date_range_outlined,
            suptitle: 'Last Date 29/02/22',
            title: 'Trending Products ',
            color: Color(0xffFD6E87),
          ),
        ],
      ),
    );
  }
}
