import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class ProductContainer {
  
  static productCards(
      {required Color colors,
      required BuildContext context,
      required bool discount,
      required String name,
      required String category,
      required String sum,
      required String summa,
      required String img,
      required String discounts,
      }) {
    return Container(
      height: getH(250),
      width: getW(158),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          getH(15),
        ),
        color: colors,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: getH(30), left: getW(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: getW(19)),
                    child: Container(
                      height: getH(80),
                      width: getW(96),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://api.bozorbek.uz${img}"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    left: getW(22),
                  ),
                  child: Image.asset("assets/images/Ellipse 244.png"),
                ),
                SizedBox(height: getH(10)),
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: getH(15),
                      ),
                ),
                Text(
                  category,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: getH(10),
                        color: const Color(0xff42445A).withOpacity(0.5),
                      ),
                ),
                SizedBox(height: getH(15)),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: sum,
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(15),
                                    ),
                          ),
                          TextSpan(
                            text: "Сум",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(10),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: getW(10)),
                    discount == true
                        ? Text(
                            "15.000 Сум",
                            style: TextStyle(
                                fontFamily: "GothamPro",
                                fontSize: getH(10),
                                color: Colors.white,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red),
                          )
                        : const Text(""),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "${summa} Сум - за 1 кг",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontSize: getH(8),
                            color: const Color(0xff42445A).withOpacity(0.5),
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: getH(165),
            left: getW(112),
            child: CircleAvatar(
              radius: getH(20),
              backgroundColor: const Color(0xff42445A),
              child: Center(
                child: Image.asset("assets/images/Group 873.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
