// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class FunFactBtn extends StatelessWidget {
  const FunFactBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
                primary: AutiTheme.primary,
                side: BorderSide(
                    width: 5.0,
                    style: BorderStyle.solid,
                    color: AutiTheme.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
            child: "Gluten food may help in development of these kids"
                .text
                .center
                .medium
                .color(Colors.black)
                .xl
                .make()
                .p(8))
        .px12();
  }
}

class AutismTestButton extends StatelessWidget {
  const AutismTestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: AutiTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                )),
            child:
                "Check out the test to clarify if your kid is autistic or not"
                    .text
                    .center
                    .bold
                    .color(AutiTheme.white)
                    .xl
                    .make()
                    .p(8))
        .px12();
  }
}
