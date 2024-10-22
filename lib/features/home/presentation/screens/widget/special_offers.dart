import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/offer.png',
          ),
          const SizedBox(
            width: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Special Offers',
                style: TextStyles.font24BlackSemiBold,
              ),
              const Text(
                'We make sure you get the\n offer you need at best prices',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
