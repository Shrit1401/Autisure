// ignore_for_file: must_be_immutable, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/food.dart';
import '../../utilis/themes.dart';
import '../common/ListImage.dart';

class FoodItemList extends StatelessWidget {
  FoodInfo item;
  FoodItemList({
    Key? key,
    required this.item,
  }) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListImage(image: item.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item.name.text.center.xl.color(AutiTheme.white).bold.make(),
            item.description.text
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
                    "\$${item.price}"
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
                              style: TextStyle(color: AutiTheme.primary),
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
                    _launchURL(item.link);
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
    )).color(AutiTheme.primary).shadowSm.rounded.square(200).make().py16();
  }
}
