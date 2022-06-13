// ignore_for_file: file_names

import 'package:autisure/utilis/themes.dart';
import 'package:autisure/widgets/common/AutiDrawer.dart';
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
              icon: const Icon(
                Icons.menu_open_rounded,
                size: 30,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: 'Autisure'.text.xl3.bold.make()),
      drawer: const AutiDrawer(),
      body: Column(
        children: const [HomePageHeading()],
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
        "Abilty In Disablity".text.bold.xl4.make(),
        5.heightBox,
        "Autisure help in every way".text.medium.align(TextAlign.left).make()
      ],
    ).p16();
  }
}
