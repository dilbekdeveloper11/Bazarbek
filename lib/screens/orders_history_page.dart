import 'dart:developer';

import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrdersHistoryPage extends StatelessWidget {
  const OrdersHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: MyAppBar.Appbar(context: context, text: "История заказов"),
        body: Padding(
          padding:
              EdgeInsets.only(top: getH(15), left: getW(20), right: getW(10)),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromRGBO(0, 0, 0, 0.15),
                      blurRadius: getH(5),
                      spreadRadius: getH(1),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(
                    getH(8),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.all(getH(5)),
                  child: TabBar(
                    labelStyle: Theme.of(context).textTheme.headline2?.copyWith(
                          fontSize: getH(12),
                        ),
                    unselectedLabelColor: const Color(0xff02B698),
                    indicator: BoxDecoration(
                      color: const Color(0xff0ACFA1),
                      borderRadius: BorderRadius.circular(
                        getH(8),
                      ),
                    ),
                    tabs: const [
                      Tab(
                        text: "Активные заказы",
                      ),
                      Tab(
                        text: "История заказов",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: getH(679),
                width: getW(345),
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: getH(20)),
                    child: Container(
                      height: getH(112),
                      width: getW(344),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getH(5),
                        ),
                        color: const Color(0xffEEF3F9),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: getH(2),
                                width: getW(344),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      getH(5),
                                    ),
                                    topRight: Radius.circular(
                                      getH(5),
                                    ),
                                  ),
                                  color: const Color(0xffFF4141),
                                ),
                              ),
                              SizedBox(height: getH(8)),
                              Padding(
                                padding: EdgeInsets.only(left: getW(10)),
                                child: Text(
                                  "05.03.2022",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      ?.copyWith(
                                        fontSize: getH(8),
                                      ),
                                ),
                              ),
                              SizedBox(height: getH(10)),
                              Row(
                                children: [
                                  SizedBox(width: getW(10)),
                                  Container(
                                    height: getH(18),
                                    width: getW(18),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Group 875.png"),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: getW(15)),
                                  Text(
                                    "Заказ № 25263  ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                          fontSize: getH(13),
                                          color: const Color(0xff42445A)
                                              .withOpacity(0.6),
                                        ),
                                  ),
                                  Container(
                                    height: getH(5),
                                    width: getW(5),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(width: getW(7)),
                                  Text(
                                    "Доставлено",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(fontSize: getH(13)),
                                  )
                                ],
                              ),
                              SizedBox(height: getH(10)),
                              Row(
                                children: [
                                  SizedBox(width: getW(10)),
                                  Container(
                                    height: getH(18),
                                    width: getW(18),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "assets/images/pin 2.png",
                                        ),
                                      ),
                                    ),
                                    
                                  ),
                                  SizedBox(width: getW(15)),
                                  Text(
                                    "Чиланзар 24. Дом 53/36",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                          fontSize: getH(13),
                                          color: const Color(0xff42445A)
                                              .withOpacity(0.6),
                                        ),
                                  ),
                                ],
                              ),
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
