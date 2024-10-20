import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/bottom.dart';
import 'package:flutter/material.dart';

class DealView extends StatelessWidget {
  const DealView(
      {super.key,
      required this.color,
      required this.title,
      required this.suptitle,
      required this.icon});
  final Color color;
  final String title;
  final String suptitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          title: Text(
            title,
            style: TextStyles.font20WhiteMedium,
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(
              top: 8,
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  suptitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.6),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          trailing: Container(
            width: MediaQuery.of(context).size.width * 0.21,
            child: Button(
              text: 'View all',
              color: Colors.transparent,
              textColor: Colors.white,
              icon: Icons.arrow_forward,
            ),
          ),
        ),
      ),
    );
  }
}
