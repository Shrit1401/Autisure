// ignore_for_file: must_be_immutable, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:money_converter/Currency.dart';
import 'package:money_converter/money_converter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/food.dart';
import '../../utilis/themes.dart';
import '../common/ListImage.dart';

class FoodItemList extends StatefulWidget {
  FoodInfo item;
  FoodItemList({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<FoodItemList> createState() => _FoodItemListState();
}

class _FoodItemListState extends State<FoodItemList> {
  String? usdToInr;
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    getAmounts();
  }

  void getAmounts() async {
    usdToInr ??= "No Price";
    var usdConvert = await MoneyConverter.convert(
        Currency(Currency.USD, amount: double.parse(widget.item.price)),
        Currency(Currency.INR));
    setState(() {
      usdToInr = usdConvert.toString().split('.')[0];
    });
  }
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListImage(image: widget.item.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.item.name.text.center.xl.color(AutiTheme.white).bold.make(),
            widget.item.description.text
                .textStyle(context.captionStyle)
                .color(AutiTheme.creamColor)
                .make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mOnly(right: 16),
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    "\u{20B9}$usdToInr"
                        .text
                        .color(AutiTheme.white)
                        .xl
                        .bold
                        .make(),
                    IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AutiTheme.white,
                            content: Text(
                              'Prices may vary, visit the actual site for more info.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: context.primaryColor),
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.info_outline),
                      iconSize: 20,
                      color: AutiTheme.white,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {
                    _launchURL(widget.item.link);
                  },
                  style: OutlinedButton.styleFrom(
                      primary: AutiTheme.white,
                      side: BorderSide(width: 2.0, color: AutiTheme.white),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: "Visit".text.color(AutiTheme.white).make(),
                )
              ],
            )
          ],
        ))
      ],
    )).color(context.primaryColor).shadowSm.rounded.square(200).make().py16();
  }
}
