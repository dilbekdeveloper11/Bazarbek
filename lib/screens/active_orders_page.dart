import 'package:bozorbek/core/components/active_orders_rows.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bumble_scrollbar/bumble_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ActiveOrdersPage extends StatelessWidget {
  const ActiveOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Активные заказы"),
      body: ListView(
        controller: controller,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getH(10),
              left: getW(10),
              right: getW(10),
            ),
            child: Column(
              children: [
                Container(
                  height: getH(410),
                  width: getW(355),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurStyle: BlurStyle.inner,
                          color: const Color.fromRGBO(0, 0, 0, 0.15),
                          spreadRadius: getH(2),
                          blurRadius: getH(2)),
                    ],
                    borderRadius: BorderRadius.circular(
                      getH(5),
                    ),
                    color: const Color(0xffEFF4FA),
                  ),
                  child: Scrollbar(
                    radius: Radius.circular(getH(5)),
                    thumbVisibility: true,
                    thickness: getH(7),
                    child: ListView.separated(
                      itemBuilder: (index, context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: getH(10),
                            left: getW(10),
                            right: getW(21),
                          ),
                          child: Container(
                            height: getH(75),
                            width: getW(315),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                getH(5),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: getW(10)),
                                    Container(
                                      height: getH(58),
                                      width: getW(57),
                                      decoration: BoxDecoration(
                                        color: const Color(0xffFE7564),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                "assets/images/image-removebg-preview (2) 10.png")),
                                        borderRadius: BorderRadius.circular(
                                          getH(5),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: getW(10)),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: getH(10)),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Яблоко    ",
                                                style: TextStyle(
                                                    fontSize: getH(18),
                                                    color:
                                                        const Color(0xff42445A),
                                                    fontFamily: "GothamPro"),
                                              ),
                                              TextSpan(
                                                text: "(15.000 Сум за 1 кг)",
                                                style: TextStyle(
                                                  fontSize: getH(13),
                                                  fontFamily: "GothamPro",
                                                  color: const Color(0xff42445A)
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: getH(8)),
                                        Row(
                                          children: [
                                            Text(
                                              "1 Кг",
                                              style: TextStyle(
                                                fontSize: getH(10),
                                                color: const Color(0xff42445A),
                                                fontFamily: "GothamPro",
                                              ),
                                            ),
                                            SizedBox(width: getW(5)),
                                            Container(
                                              height: getH(4),
                                              width: getW(4),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff42445A),
                                              ),
                                            ),
                                            SizedBox(width: getW(5)),
                                            Text(
                                              "Семеренько",
                                              style: TextStyle(
                                                fontSize: getH(8),
                                                color: const Color(0xff42445A),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.only(left: getW(131)),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "15.000 ",
                                                  style: TextStyle(
                                                    fontSize: getH(15),
                                                    fontFamily: "GothamPro",
                                                    color:
                                                        const Color(0xff70ADEE),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "Сум",
                                                  style: TextStyle(
                                                    fontSize: getH(10),
                                                    fontFamily: "GothamPro",
                                                    color:
                                                        const Color(0xff70ADEE),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: getH(11),
                                  left: getW(292),
                                  child: Container(
                                    height: getH(15),
                                    width: getW(15),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Vector (1).png"),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox();
                      },
                      itemCount: 25,
                    ),
                  ),
                ),
                SizedBox(height: getH(5)),
                Container(
                  height: getH(66),
                  width: getW(355),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getH(8),
                    ),
                    color: const Color(0xffEFF4FA),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(0, 0, 0, 0.15),
                        blurStyle: BlurStyle.normal,
                        blurRadius: getH(2),
                        spreadRadius: getH(2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: getH(10), left: getW(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Сумма доставки:",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                            SizedBox(width: getW(119)),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "15.000",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  ),
                                  TextSpan(
                                    text: " Сум",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                          fontSize: getH(10),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Общая сумма",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(
                                    color: const Color(0xff00CF53),
                                  ),
                            ),
                            SizedBox(width: getW(60)),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "90.000",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1
                                        ?.copyWith(
                                          color: const Color(0xff00CF53),
                                        ),
                                  ),
                                  TextSpan(
                                    text: " Сум",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2
                                        ?.copyWith(
                                          color: const Color(
                                            0xff00CF53,
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
                  ),
                ),
                SizedBox(height: getH(5)),
                Container(
                  height: getH(487),
                  width: getW(355),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      getH(8),
                    ),
                    color: const Color(0xffEFF4FA),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(0, 0, 0, 0.15),
                        blurStyle: BlurStyle.normal,
                        blurRadius: getH(2),
                        spreadRadius: getH(2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getH(10),
                      left: getW(14),
                      right: getW(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormRow.formRow(
                            context: context,
                            text: "Имя:",
                            formText: "Имя:",
                            width: 40),
                        SizedBox(height: getH(10)),
                        FormRow.formRow(
                            context: context,
                            text: "Номер:",
                            formText: "Номер телефона",
                            width: 24),
                        SizedBox(height: getH(10)),
                        FormRow.formRow(
                            context: context,
                            text: "Адрес:",
                            formText: "Старый Адресс",
                            width: 28),
                        SizedBox(height: getH(25)),
                        Padding(
                          padding: EdgeInsets.only(left: getW(75)),
                          child: Container(
                            height: getH(32),
                            width: getW(179),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getH(8),
                              ),
                              color: const Color(0xff70ADEE),
                            ),
                            child: Center(
                              child: Text(
                                "Показать на карте",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                      fontSize: getH(13),
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: getH(25)),
                        Container(
                          margin: EdgeInsets.only(left: getW(125)),
                          height: getH(5),
                          width: getW(70),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: getH(1),
                                spreadRadius: getH(1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              getH(8),
                            ),
                          ),
                        ),
                        SizedBox(height: getH(5)),
                        Container(
                          height: getH(95),
                          width: getW(334),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                spreadRadius: getH(1),
                                blurRadius: getH(2),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              getH(8),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: getH(15), left: getW(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Добавить комментарии",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline2
                                      ?.copyWith(
                                        color: const Color(0xff42445A)
                                            .withOpacity(0.8),
                                      ),
                                ),
                                SizedBox(height: getH(15)),
                                Container(
                                  height: getH(31),
                                  width: getW(314),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: getH(1)),
                                    borderRadius: BorderRadius.circular(
                                      getH(8),
                                    ),
                                  ),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      contentPadding: EdgeInsets.all(13),
                                      hintText: "Напишите текст",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: getH(50)),
                        Container(
                          height: getH(42),
                          width: getW(334),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.15),
                                  blurRadius: getH(2),
                                  spreadRadius: getH(1))
                            ],
                            borderRadius: BorderRadius.circular(
                              getH(10),
                            ),
                            color: const Color(0xff02B698),
                          ),
                          child: Center(
                            child: Text(
                              "Оформить заказ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(height: getH(17)),
                        Container(
                          height: getH(42),
                          width: getW(334),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                blurRadius: getH(2),
                                spreadRadius: getH(1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(
                              getH(10),
                            ),
                            color: const Color(0xff70ADEE),
                          ),
                          child: Center(
                            child: Text(
                              "Сохранить корзину",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: getH(10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
