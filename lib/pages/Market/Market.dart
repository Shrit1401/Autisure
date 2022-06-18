// ignore_for_file: file_names

import 'package:autisure/pages/Market/Food.dart';
import 'package:autisure/pages/Market/Toys.dart';
import 'package:autisure/widgets/common/Drawer/AutiDrawer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';
import '../../widgets/common/ExitPopup.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> with SingleTickerProviderStateMixin {
  static late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                height: 20,
                color: AutiTheme.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: 'Market'.text.xl3.bold.make(),
          bottom: TabBar(
              controller: controller,
              indicatorColor: AutiTheme.white,
              tabs: const [
                Tab(
                  icon: Icon(Icons.toys_outlined),
                  text: "Toys",
                ),
                Tab(
                  icon: Icon(Icons.food_bank_outlined),
                  text: "Food",
                ),
              ]),
        ),
        drawer: const AutiDrawer(),
        body: TabBarView(
            controller: controller, children: const [Toys(), Food()]),
      ),
    );
  }
}
