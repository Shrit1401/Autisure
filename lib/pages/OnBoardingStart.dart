// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/OnBoardingScreen/onBoardScreenStartingContect.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart' show Lottie;
import 'package:velocity_x/velocity_x.dart';

import '../widgets/common/ExitPopup.dart';

class OnBoardingStart extends StatefulWidget {
  const OnBoardingStart({Key? key}) : super(key: key);

  @override
  State<OnBoardingStart> createState() => _OnBoardingStartState();
}

class _OnBoardingStartState extends State<OnBoardingStart> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        backgroundColor: AutiTheme.primary,
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingContent.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, index) {
                  return Column(children: [
                    Lottie.network(onboardingContent[index].image,
                        height: 300, animate: true),
                    40.heightBox,
                    onboardingContent[index]
                        .title
                        .text
                        .textStyle(const TextStyle(fontWeight: FontWeight.bold))
                        .xl4
                        .center
                        .color(AutiTheme.white)
                        .make(),
                  ]).p32();
                },
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingContent.length,
                  (index) => buildDot(index),
                )),
            25.heightBox,
            Container(
              height: 60,
              margin: const EdgeInsets.only(bottom: 40, left: 40, right: 40),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (currentIndex != onboardingContent.length - 1) {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                  } else {
                    Navigator.pushNamed(
                        context, AutiRoutes.onBoardingHomeRoute);
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: AutiTheme.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: (currentIndex == onboardingContent.length - 1
                        ? 'Continue'
                        : 'Get Started')
                    .text
                    .color(AutiTheme.primary)
                    .lg
                    .bold
                    .make(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AutiTheme.white,
      ),
    );
  }
}
