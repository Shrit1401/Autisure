// ignore_for_file: file_names

import 'package:autisure/utilis/routes.dart';
import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/common/Drawer/AutiDrawer.dart';
import 'package:autisure/widgets/common/ExitPopup.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var containerChanged = 30.heightBox;
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: AutiTheme.primary,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                icon: Image.asset(
                  'assets/icons/menu.png',
                  color: AutiTheme.white,
                  height: 20,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            title: 'Autisure'.text.xl3.bold.make()),
        drawer: const AutiDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageHeading(),
              .20.heightBox,
              const FunFactBtn(),
              containerChanged,
              const AutismTestButton(),
              containerChanged,
              const DoctorSuggestionHead(),
              .20.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const DoctorSuggestionList().pOnly(right: 24),
                    const DoctorSuggestionList().pOnly(right: 24),
                    const DoctorSuggestionList().pOnly(right: 24),
                  ],
                ),
              )
            ],
          ).p16(),
        ),
      ),
    );
  }
}

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
        10.heightBox,
      ],
    );
  }
}

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

class DoctorSuggestionList extends StatelessWidget {
  const DoctorSuggestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AutiTheme.primary,
      height: 250,
      width: 250,
      child: Column(
        children: [
          Image.network(
                  "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg")
              .cornerRadius(12),
          10.heightBox,
          Column(
            children: [
              "Dr. Rajesh Sharma".text.xl2.color(AutiTheme.white).bold.make(),
              5.heightBox,
              "Autisitc Specilist"
                  .text
                  .medium
                  .color(AutiTheme.white)
                  .bold
                  .make(),
            ],
          )
        ],
      ).p16(),
    ).cornerRadius(16);
  }
}
