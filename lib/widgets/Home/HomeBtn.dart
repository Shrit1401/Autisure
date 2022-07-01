// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class AutismTestButton extends StatelessWidget {
  const AutismTestButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AutiRoutes.testRoute);
            },
            style: ElevatedButton.styleFrom(
                primary: context.primaryColor,
              enableFeedback: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  width: 3,
                  color: AutiTheme.darkPrimary,
                ),
              ),
            ),
            child:
                "Check out the test to clarify if your kid is autistic or not"
                    .text
                    .center
                    .bold
                    .color(AutiTheme.white)
                    .xl
                    .make()
                    .p(20))
        .px12();
  }
}
