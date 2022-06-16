// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utilis/themes.dart';

class ListImage extends StatelessWidget {
  final String image;
  const ListImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(AutiTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
