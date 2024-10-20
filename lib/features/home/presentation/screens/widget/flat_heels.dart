import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/bottom.dart';
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
        decoration: BoxDecoration(
          color: Color(0xffE7E7EB),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Image.asset('assets/images/FlatHeels.png'),
            SizedBox(
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
                Text(
                  'Stand a chance to get rewarded',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Button(
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
