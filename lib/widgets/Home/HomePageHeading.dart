// ignore_for_file: file_names

import 'package:autisure/pages/Market/Market.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/routes.dart';
import '../../utilis/themes.dart';

class HomePageHeading extends StatelessWidget {
  const HomePageHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Abilty In Disablity"
            .text
            .medium
            .color(AutiTheme.primary)
            .xl5
            .make()
            .p0(),
        "Autisure help in every way"
            .text
            .color(AutiTheme.primary)
            .lg
            .align(TextAlign.left)
            .make()
            .p0(),
      ],
    );
  }
}

class DoctorSuggestionHead extends StatelessWidget {
  const DoctorSuggestionHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "Check Out Some Doctors".text.xl2.bold.make(),
        TextButton(
            onPressed: () {
              Navigator.restorablePushReplacementNamed(
                  context, AutiRoutes.doctorRoute);
            },
            style: TextButton.styleFrom(primary: AutiTheme.primary),
            child: "See More".text.lg.makeCentered().pOnly(top: 2)),
      ],
    ).px8();
  }
}

class ToysSuggestionHead extends StatelessWidget {
  const ToysSuggestionHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "Check Toys".text.xl2.bold.make(),
        TextButton(
            onPressed: () {
              Navigator.restorablePushReplacementNamed(
                  context, AutiRoutes.marketRoute);
            },
            style: TextButton.styleFrom(primary: AutiTheme.primary),
            child: "See More".text.lg.makeCentered().pOnly(top: 2)),
      ],
    ).px8();
  }
}

class FoodSuggestionHead extends StatelessWidget {
  const FoodSuggestionHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        "Check Food Items".text.xl2.bold.make(),
        TextButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Market()));
            },
            style: TextButton.styleFrom(primary: AutiTheme.primary),
            child: "See More".text.lg.makeCentered().pOnly(top: 2)),
      ],
    ).px8();
  }
}
