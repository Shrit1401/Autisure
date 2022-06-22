// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

class ShimmerWidget extends StatelessWidget {
  final double height, width;
  final ShapeBorder shapeBorder;

  const ShimmerWidget.circular({
    required this.width,
    required this.height,
    this.shapeBorder = const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))),
  });

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: context.primaryColor.withAlpha(800),
        highlightColor: context.primaryColor.withAlpha(1100),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(shape: shapeBorder, color: Colors.grey),
        ).py8(),
      );
}
