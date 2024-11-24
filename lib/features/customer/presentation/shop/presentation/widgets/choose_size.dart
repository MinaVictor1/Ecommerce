import 'package:ecommerce/core/theme/styles.dart';
import 'package:flutter/material.dart';

class ChooseSize extends StatefulWidget {
  const ChooseSize({super.key});

  @override
  State<ChooseSize> createState() => _SizeState();
}

class _SizeState extends State<ChooseSize> {
  String selectedSize = '7UK'; // Initially selected size

  final List<String> sizes = ['6UK', '7UK', '8UK', '9UK', '10UK'];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size : $selectedSize',
            style: TextStyles.font16BlackSemiBold,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Wrap(
            spacing: 5.0,
            children: sizes.map((size) {
              final isSelected = size == selectedSize;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedSize = size;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 14.0),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.pinkAccent : Colors.white,
                    border: Border.all(color: Colors.pinkAccent),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text(
                    size,
                    style: TextStyles.font16WhiteBold.copyWith(
                        color: isSelected ? Colors.white : Colors.pink),
                  ),
                ),
              );
            }).toList(),
          )
        ]);
  }
}
