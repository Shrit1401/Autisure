// ignore_for_file: file_names, deprecated_member_use

import 'package:autisure/models/toys.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

// ignore: must_be_immutable
class ToysSuggestionList extends StatelessWidget {
  ToysInfo item;
  ToysSuggestionList({
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
    return Container(
      color: context.primaryColor,
      height: 250,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: Key(item.name),
            child: Image.network(
              item.imageUrl,
              width: 80,
              height: 80,
            ).cornerRadius(12),
          ),
          10.heightBox,
          Column(
            children: [
              item.name.text.xl.color(AutiTheme.white).bold.make(),
              5.heightBox,
              "\$${item.price}".text.medium.color(AutiTheme.white).bold.make(),
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
      ).p16(),
    ).cornerRadius(16);
  }
}
