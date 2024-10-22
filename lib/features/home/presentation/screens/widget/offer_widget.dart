import 'package:ecommerce/core/theme/styles.dart';
import 'package:ecommerce/features/home/presentation/screens/widget/home_botton.dart';
import 'package:flutter/material.dart';

class OfferWidget extends StatefulWidget {
  const OfferWidget({super.key});

  @override
  State<OfferWidget> createState() => _OfferWidgetState();
}

class _OfferWidgetState extends State<OfferWidget> {
  int indecatorIndex = 0;
  late PageController _pageController;
  final List<String> offers = [
    'assets/images/offer_image.png',
    'assets/images/offer_image.png',
    'assets/images/offer_image.png',
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          width: double.infinity,
          child: PageView.builder(
            controller: _pageController,
            itemCount: offers.length,
            onPageChanged: (index) {
              setState(() {
                indecatorIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Image.asset(
                    offers[index],
                    width: MediaQuery.of(context).size.width * 0.95,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "50-40% OFF",
                        style: TextStyles.font20WhiteBold,
                      ),
                      Text(
                        "Now in (product)\nAll colours",
                        style: TextStyles.font12BlackRegular
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: const HomeButton(
                          text: "Shop Now",
                          icon: Icons.arrow_forward_outlined,
                          color: Colors.transparent,
                          textColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: offers.asMap().entries.map((entry) {
            return Container(
              width: 12.0,
              height: 12.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (indecatorIndex == entry.key
                      ? Colors.red
                      : Colors.grey.shade400)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
