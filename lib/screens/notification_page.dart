import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count=10;
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Уведомление"),
      body: Padding(
        padding:
            EdgeInsets.only(top: getH(20), left: getW(15), right: getW(15)),
        child: Container(
          height: getH(800),
          width: getW(360),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: getH(150),
                width: getW(330),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: getH(14),
                          backgroundColor: const Color(0xff70ADEE),
                          child: CircleAvatar(
                            radius: getH(12),
                            backgroundColor: Colors.white,
                          ),
                        ),
                         Container(
                          height: getH(122),
                          width: getW(2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getH(3),
                            ),
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: getW(15)),
                    Column(
                      children: [
                        Container(
                          height: getH(110),
                          width: getW(304),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: getH(5),
                                spreadRadius: getH(1),
                              ),
                            ],
                            color: const Color(0xffEEF3F9),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: getH(2),
                                    width: getW(304),
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
                                  Row(
                                    children: [
                                      SizedBox(width: getW(20)),
                                      Text(
                                        "Новое уведомление",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            ?.copyWith(
                                              color: const Color(0xffFF0505)
                                                  .withOpacity(0.76),
                                            ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "13 Марта",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            ?.copyWith(
                                              fontSize: getH(10),
                                              color: const Color(0xffFF0505)
                                                  .withOpacity(0.76),
                                            ),
                                      ),
                                      SizedBox(width: getW(15)),
                                    ],
                                  ),
                                  SizedBox(height: getH(15)),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(width: getW(20)),
                                      Container(
                                        height: getH(40),
                                        width: getW(150),
                                        child: Text(
                                          maxLines: 3,
                                          textAlign: TextAlign.left,
                                          "Мы обнавили наш онлайн Бозорбек и добавили новую функцию как оплатить с картой ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline2
                                              ?.copyWith(
                                                fontSize: getH(10),
                                                color: const Color(0xff42445A)
                                                    .withOpacity(0.3),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                top: getH(45),
                                left: getW(250),
                                child: Text(
                                  "04:45 pm",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      ?.copyWith(
                                        fontSize: getH(10),
                                        color: const Color(0xff424445A)
                                            .withOpacity(0.6),
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: count,
          ),
        ),
      ),
    );
  }
}
