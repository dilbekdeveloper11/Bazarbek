import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class CutContainer {
  static cut(
      {required double height,
      required double width,
      required double borderRadius,
      required Color color}) {
    return Container(
      height: getH(height),
      width: getW(width),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(
            getH(borderRadius),
          ),
          topLeft: Radius.circular(
            getH(borderRadius),
          ),
        ),
      ),
    );
  }
}
