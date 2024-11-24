import 'package:auto_size_text/auto_size_text.dart';
import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/customer/presentation/home/presentation/widget/home_botton.dart';
import 'package:flutter/material.dart';

class FlatHeels extends StatelessWidget {
  const FlatHeels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 190,
      decoration: const BoxDecoration(
        color: Color(0xffE7E7EB),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/FlatHeels.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flat and Heels',
                style: TextStyles.font24BlackSemiBold,
              ),
              const AutoSizeText(
                'Stand a chance to get rewarded',
                maxLines: 1,
                minFontSize: 12,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 7,
              ),
              const HomeButton(
                text: 'Visit Now',
                icon: Icons.arrow_forward,
                color: Color(0xffF83758),
                textColor: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
