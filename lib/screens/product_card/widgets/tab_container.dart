import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TabContainer {
  static tabContainer({required BuildContext context, required String text}) {
    return Container(
      height: getH(35),
      width: getW(136),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(8),
        ),
        color: const Color(0xffFAE1D9),
      ),
      child: Row(
        children: [
          SizedBox(width: getW(5)),
          Image.asset("assets/images/unsplash_EumgKI11Hns.png"),
          SizedBox(width: getW(5)),
          Container(
            width: getW(81),
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: const Color(0xffEA5B57),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
