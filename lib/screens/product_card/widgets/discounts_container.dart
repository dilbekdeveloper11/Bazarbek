import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class DiscountContainers {
  static discountcards({required BuildContext context}) {
    return Container(
        height: getH(125),
        width: getW(157),
        decoration: BoxDecoration(
          color: const Color(0xffECEFF3),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(0, 0, 0, 0.15),
              spreadRadius: getH(1),
              blurRadius: getH(5),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: getH(15), left: getW(26)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(width: getW(15)),
                      Text(
                        "Весенние скидки",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(10),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(15)),
                  Row(
                    children: [
                      SizedBox(width: getW(39)),
                      Text(
                        "40%",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: getH(10)),
                  Container(
                    height: getH(19),
                    width: getW(105),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff0BD9A9),
                      ),
                      borderRadius: BorderRadius.circular(
                        getH(4),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Перейти к скидкам",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(8),
                              color: const Color(0xff0BD9A9),
                            ),
                      ),
                    ),
                  ),
                  SizedBox(height: getH(5)),
                  Padding(
                    padding: EdgeInsets.only(left: getW(8)),
                    child: Container(
                      height: getH(23),
                      width: getW(89),
                      child: Text(
                        "Вессение скидки для фруктов и овощей",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(9),
                              color: const Color(0xff42445A).withOpacity(0.5),
                            ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: getH(111),
              left: getW(114),
              child: Image.asset("assets/images/image 4.png"),
            ),
            Positioned(
              top: getH(26),
              child: Image.asset("assets/images/image 5.png"),
            ),
            Positioned(
              top: getH(111),
              left: getW(15),
              child: Image.asset("assets/images/image 6.png"),
            )
          ],
        ),
      );
  }
}
