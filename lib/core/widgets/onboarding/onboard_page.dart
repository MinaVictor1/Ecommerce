import 'package:ecommerce/core/routing/routes.dart';
import 'package:ecommerce/core/widgets/onboarding/widget/custom_indicator.dart';
import 'package:ecommerce/core/widgets/onboarding/widget/first_page.dart';
import 'package:ecommerce/core/widgets/onboarding/widget/secound_page.dart';
import 'package:ecommerce/core/widgets/onboarding/widget/third_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${index + 1}/3',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(Routes.kSignIn);
                    },
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: _controller,
                children: const [
                  FirstPage(),
                  SecoundPage(),
                  ThirdPage(),
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIndicator(active: index == 0),
                      CustomIndicator(active: index == 1),
                      CustomIndicator(active: index == 2),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _controller.animateToPage(
                            index - 1,
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.linear,
                          );
                        },
                        child: const Text(
                          'prev',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (index == 2) {
                            GoRouter.of(context).push(Routes.kSignIn);
                          } else {
                            _controller.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.linear,
                            );
                          }
                        },
                        child: Text(
                          index == 2 ? 'Get Started' : 'Next',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
