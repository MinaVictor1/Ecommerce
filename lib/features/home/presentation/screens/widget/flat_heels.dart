import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/home_botton.dart';
import 'package:flutter/material.dart';

class FlatHeels extends StatelessWidget {
  const FlatHeels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 190,
        decoration: const BoxDecoration(
          color: Color(0xffE7E7EB),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/FlatHeels.png'),
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: Text(
                    'Flat and Heels',
                    style: TextStyles.font24BlackSemiBold,
                  ),
                ),
                const Text(
                  'Stand a chance to get rewarded',
                  style: TextStyle(
                    fontSize: 16,
                  ),
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
      ),
    );
  }
}
