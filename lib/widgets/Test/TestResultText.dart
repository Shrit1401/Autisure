// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TestResultText extends StatelessWidget {
  String text;
  TestResultText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return text.text.xl3.underline.center.makeCentered().px12();
  }
}

class TestResultDesc extends StatelessWidget {
  String text;
  TestResultDesc({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return text.text.lg.center.makeCentered().px12();
  }
}
