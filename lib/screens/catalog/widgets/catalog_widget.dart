import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class CatalogContainer {
  static catalogContainer(
      {required String text,
      required String rasm,
      required BuildContext context,
      required Function funk}) {
    return GestureDetector(
      onTap: (() {
        funk();
      }),
      child: Container(
        height: getH(111),
        width: getW(157),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(
            getH(15),
          ),
          image: DecorationImage(
            image: NetworkImage(
              "https://api.bozorbek.uz$rasm",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: getH(10)),
            Row(
              children: [
                SizedBox(width: getW(10)),
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontSize: getH(15), color: Colors.white),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: const Color(0xff42445A),
                  size: getH(24),
                ),
                SizedBox(width: getW(10)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
