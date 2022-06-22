// ignore_for_file: must_be_immutable, file_names

import 'package:autisure/widgets/Test/TestResultText.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class Result extends StatefulWidget {
  int score;
  Result({
    Key? key,
    required this.score,
  }) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool isMild = false, isNormal = false, isSevere = false;

  @override
  void initState() {
    super.initState();
    testResult();
  }

  void testResult() {
    if (widget.score > 5 && widget.score <= 12) {
      isMild = true;
    } else if (widget.score < 5) {
      isSevere = true;
    } else if (widget.score > 12) {
      isNormal = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "The Test Results are:"
            .text
            .xl5
            .center
            .color(context.primaryColor)
            .bold
            .makeCentered(),
        20.heightBox,
        isMild
            ? TestResultText(text: "Your Kid May Have a Mild autism")
            : isNormal
                ? TestResultText(text: "Your kid is safe and sound")
                : isSevere
                    ? TestResultText(text: "Your Kid May Have a Severe autism")
                    : TestResultText(text: "Your Kid May Have a Mild autism"),
        40.heightBox,
        isMild
            ? TestResultDesc(
                text:
                    "Within are test we found that your kid is do have some symptoms of autism but it's not that much, the test results aren't final")
            : isNormal
                ? TestResultDesc(
                    text:
                        "Within are test we found that your kid is safe and sound and don't have any symptoms of autism, but consulting with a doctor for any further information is recommended")
                : isSevere
                    ? TestResultDesc(
                        text:
                            "Within are test we found that your kid is may be autistic to contact with a doctor before asumming anything")
                    : TestResultDesc(
                        text:
                            "Within are test we found that your kid is do have some symptoms of autism but it's not that much, the test results aren't final"),
        10.heightBox,
        "Note: the Test result aren’t the final consult a doctor they may help"
            .text
            .lg
            .center
            .make()
            .px12()
      ],
    );
  }
}
