// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/routes.dart';

class Therapist extends StatelessWidget {
  const Therapist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        "Therapist"
            .text
            .start
            .bold
            .headline4(context)
            .color(context.primaryColor)
            .make(),
        10.heightBox,
        const Text(
          ' • Speech Therapist: Treats people with speech and language problems.\n\n'
          ' • Occupational Therapist: Improves daily living and work skills of patients.\n\n'
          ' • Neurologist: Treats nervous system disorders.\n\n'
          ' • Psychiatrist: Treats mental disorders primarily with medications.\n\n'
          ' • Paediatrician: Provides medical care for infants, children and teenagers.\n\n'
          ' • Primary Care Provider (PCP): Prevents, diagnoses and treats diseases.\n\n',
          textAlign: TextAlign.center,
        ).px(30),
        1.heightBox,
        TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, AutiRoutes.doctorRoute);
            },
            style: TextButton.styleFrom(primary: context.primaryColor),
            child: "Check Some Doctors".text.make())
      ],
    );
  }
}
