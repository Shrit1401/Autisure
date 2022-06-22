// ignore_for_file: file_names

import 'package:autisure/pages/Test/TestResult.dart';
import 'package:autisure/widgets/Test/TestContent.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/common/ExitPopup.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int currentIndex = 0, score = 0;
  bool isVisible = false, isYes = false, isNo = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => showExitPopup(context),
        child: SafeArea(
          child: Scaffold(
              backgroundColor: context.backgroundColor,
              body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              "Autisure Test: ${testContent[currentIndex].id}/${testContent.length}"
                  .text
                  .headline4(context)
                      .color(context.primaryColor)
                  .makeCentered(),
              Column(
                children: [
                  "Q${testContent[currentIndex].id}. ${testContent[currentIndex].question}"
                      .text
                      .center
                          .color(context.primaryColor)
                      .headline4(context)
                      .make(),
                  10.heightBox,
                      testContent[currentIndex]
                          .info
                          .text
                          .color(context.primaryColor)
                          .center
                          .make()
                ],
              ).px(2),
              Column(
                children: [
                  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: isYes ? Colors.grey : AutiTheme.grey,
                          ),
                          onPressed: () {
                            isVisible = true;
                            isYes = true;
                            setState(() {});

                            if (isNo) {
                              isNo = false;
                              isYes = true;
                              setState(() {});
                            }
                          },
                          child: "Yes".text.xl4.bold.color(Colors.black).make())
                      .w32(context),
                  30.heightBox,
                  ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: isNo
                                ? const Color.fromARGB(255, 188, 188, 188)
                                : AutiTheme.grey,
                          ),
                          onPressed: () {
                            isVisible = true;
                            isNo = true;
                            setState(() {});

                            if (isYes) {
                              isYes = false;
                              isNo = true;
                              setState(() {});
                            }
                          },
                          child: "No".text.xl4.bold.color(Colors.black).make())
                      .w32(context),
                  50.heightBox,
                  Visibility(
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    visible: isVisible,
                    child: ElevatedButton(
                      onPressed: () {
                        if (isVisible) {
                          if (isYes) {
                            score--;
                          }

                          if (isNo) {
                            score++;
                          }

                          isVisible = false;
                          isYes = false;
                          isNo = false;
                          if (currentIndex != testContent.length - 1) {
                            currentIndex++;
                          } else {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    duration: const Duration(milliseconds: 300),
                                    child: TestResult(
                                      score: score,
                                    )));
                          }
                          setState(() {});
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          primary: AutiTheme.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12))),
                      child: currentIndex == testContent.length - 1
                          ? "End Test".text.xl4.make()
                          : "Continue".text.xl4.make(),
                    ).p16().wFull(context),
                  )
                ],
              ).px12()
            ],
          )),
        ));
  }
}
