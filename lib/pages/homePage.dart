// ignore_for_file: file_names

import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/common/Drawer/AutiDrawer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          const HomePageHeading(),
          .20.heightBox,
        ],
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
        const FunFactBtn(),
      ],
    ).p16();
  }
}

class FunFactBtn extends StatelessWidget {
  const FunFactBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
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
                .semiBold
                .color(Colors.black)
                .xl
                .make()
                .p(8))
        .px12();
  }
}
