import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AutoOrdersPage extends StatelessWidget {
  const AutoOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Авто заказ"),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              top: getH(20),
              left: getW(10),
              right: getW(10),
            ),
            height: getH(346),
            width: getW(345),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.15),
                  spreadRadius: getH(1),
                  blurRadius: getH(8),
                ),
              ],
              borderRadius: BorderRadius.circular(
                getH(15),
              ),
              color: const Color(0xffE0F3FF),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  top: getH(20), left: getW(12), right: getW(12)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Корзина для плова",
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                              fontSize: getH(22),
                            ),
                      ),
                      SizedBox(
                        width: getW(10),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getH(7)),
                        child: Container(
                          height: getH(10),
                          width: getW(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff42445A),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(25)),
                  Container(
                    height: getH(85),
                    width: double.infinity,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: getW(101),
                          crossAxisSpacing: getH(15),
                          mainAxisSpacing: getH(5)),
                      itemBuilder: (context, index) {
                        return Container(
                          height: getH(31),
                          width: getW(91),
                          decoration: BoxDecoration(
                            color: const Color(0xffEAEED8),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.15),
                                spreadRadius: getH(1),
                                blurRadius: getH(4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: getW(5)),
                              Image.asset(
                                "assets/images/unsplash_FZJO5-NFVzI.png",
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: getW(5)),
                              Text(
                                "Овощи",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline2
                                    ?.copyWith(
                                      color: const Color(0xff93B86B),
                                    ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: getH(25)),
                  Row(
                    children: [
                      Text(
                        "Всего",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(18),
                            ),
                      ),
                      SizedBox(width: getW(10)),
                      Container(
                        margin: EdgeInsets.only(top: getH(5)),
                        height: getH(8),
                        width: getW(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff42445A),
                        ),
                      ),
                      SizedBox(width: getW(10)),
                      Text(
                        "14 продуктов",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(18),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(15)),
                  Row(
                    children: [
                      Text(
                        "Общая сумма",
                        style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: getH(18),
                            ),
                      ),
                      SizedBox(width: getW(15)),
                      Container(
                        margin: EdgeInsets.only(top: getH(5)),
                        height: getH(8),
                        width: getW(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff42445A),
                        ),
                      ),
                      SizedBox(width: getW(15)),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "150.000 ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(fontSize: getH(18)),
                            ),
                            TextSpan(
                              text: "Сум",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(15)),
                  Row(
                    children: [
                      Text(
                        "За 1 неделю в понедельник",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(fontSize: getH(18)),
                      ),
                    ],
                  ),
                  SizedBox(height: getH(20)),
                  Row(
                    children: [
                      InkWell(
                        child: Container(
                          height: getH(30),
                          width: getW(131),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getH(8),
                            ),
                            color: const Color(0xffF55F5F),
                          ),
                          child: Center(
                            child: Text(
                              "Удалить",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline1
                                  ?.copyWith(
                                    fontSize: getH(18),
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getH(15),
                                  ),
                                ),
                                insetPadding: EdgeInsets.zero,
                                elevation: 3,
                                child: Container(
                                  height: getH(471),
                                  width: getW(355),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getH(15),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: getH(20),
                                        left: getW(10),
                                        right: getW(10)),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: getH(50),
                                          width: getW(355),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-1, -1),
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.15),
                                              ),
                                            ],
                                            borderRadius: BorderRadius.circular(
                                              getH(5),
                                            ),
                                            color: const Color(0xffEEF3F9),
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  EdgeInsets.all(getH(10)),
                                              border: const OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              hintText:
                                                  "Придумайте название корзины",
                                              hintStyle: Theme.of(context)
                                                  .textTheme
                                                  .headline2
                                                  ?.copyWith(
                                                    fontSize: getH(18),
                                                    color:
                                                        const Color(0xff42445A)
                                                            .withOpacity(0.5),
                                                  ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: getH(8)),
                                        Container(
                                          height: getH(294),
                                          width: getW(335),
                                          decoration: BoxDecoration(
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(-1, -1),
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.15),
                                              ),
                                            ],
                                            borderRadius: BorderRadius.circular(
                                              getH(5),
                                            ),
                                            color: const Color(0xffEEF3F9),
                                          ),
                                          child: Scrollbar(
                                            radius: Radius.circular(getH(5)),
                                            thumbVisibility: true,
                                            thickness: getH(7),
                                            scrollbarOrientation:
                                                ScrollbarOrientation.right,
                                            child: ListView.separated(
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getH(10),
                                                    left: getW(10),
                                                    right: getW(21),
                                                  ),
                                                  child: Container(
                                                    height: getH(61),
                                                    width: getW(298),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getH(5),
                                                      ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: getH(10),
                                                          left: getW(10)),
                                                      child: Row(
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Яблоко",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2,
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      getH(10)),
                                                              Text(
                                                                "Семенренко",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2
                                                                    ?.copyWith(
                                                                      fontSize:
                                                                          getH(
                                                                              12),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                              width: getW(45)),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Вес",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2
                                                                    ?.copyWith(
                                                                      color: const Color(
                                                                          0xff70ADEE),
                                                                    ),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      getH(15)),
                                                              Text(
                                                                "1 кг",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2
                                                                    ?.copyWith(
                                                                      fontSize:
                                                                          getH(
                                                                              12),
                                                                      color: const Color(
                                                                              0xff42445A)
                                                                          .withOpacity(
                                                                              0.5),
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                              width: getW(45)),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                "Цена",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline2
                                                                    ?.copyWith(
                                                                      color: const Color(
                                                                          0xff70ADEE),
                                                                    ),
                                                              ),
                                                              SizedBox(
                                                                height:
                                                                    getH(10),
                                                              ),
                                                              RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          "15.000 ",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline2
                                                                          ?.copyWith(
                                                                            color:
                                                                                const Color(0xff0BD9A9),
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          "Сум",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .headline2
                                                                          ?.copyWith(
                                                                            fontSize:
                                                                                getH(12),
                                                                            color:
                                                                                const Color(0xff0BD9A9),
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
                                                );
                                              },
                                              separatorBuilder:
                                                  (context, index) {
                                                return const SizedBox();
                                              },
                                              itemCount: 10,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: getH(30)),
                                        Row(
                                          children: [
                                            InkWell(
                                              child: Container(
                                                height: getH(40),
                                                width: getW(150),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getH(10),
                                                  ),
                                                  color:
                                                      const Color(0xffFB3E40),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Отменить",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                              onTap: (){Navigator.pop(context);},
                                            ),
                                            SizedBox(width: getW(20)),
                                            InkWell(
                                              child: Container(
                                                height: getH(40),
                                                width: getW(150),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getH(10),
                                                  ),
                                                  color:
                                                      const Color(0xff33D980),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "Создать",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1
                                                        ?.copyWith(
                                                            color:
                                                                Colors.white),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return Dialog(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getH(10),
                                                        ),
                                                      ),
                                                      child: Container(
                                                        height: getH(459),
                                                        width: getW(339),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: const Color(
                                                              0xff0ACFA1),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getH(10),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getH(50),
                                                            left: getW(10),
                                                            right: getW(10),
                                                          ),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                height: getH(
                                                                  109.5,
                                                                ),
                                                                width:
                                                                    getW(107),
                                                                decoration:
                                                                    const BoxDecoration(
                                                                  image:
                                                                      DecorationImage(
                                                                    image:
                                                                        AssetImage(
                                                                      "assets/images/Vector 451.png",
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      getH(16)),
                                                              Text(
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                "Успешно",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .headline1
                                                                    ?.copyWith(
                                                                      fontSize:
                                                                          getH(
                                                                              25),
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                              ),
                                                              const Spacer(),
                                                              Container(
                                                                height:
                                                                    getH(54),
                                                                width:
                                                                    getW(261),
                                                                child: Text(
                                                                  maxLines: 2,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  "Вы успешно сохранили готовую корзину. Спасибо.",
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .headline2
                                                                      ?.copyWith(
                                                                        fontSize:
                                                                            getH(18),
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      getH(92)),
                                                              Container(
                                                                height:
                                                                    getH(50),
                                                                width:
                                                                    getW(321),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getH(5),
                                                                  ),
                                                                  color: const Color(
                                                                          0xff000000)
                                                                      .withOpacity(
                                                                    0.2,
                                                                  ),
                                                                ),
                                                                child: Center(
                                                                  child: Text(
                                                                    "Перейти в готовые корзины",
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .headline1
                                                                        ?.copyWith(
                                                                          color:
                                                                              Colors.white,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height:
                                                                      getH(10)),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      SizedBox(width: getW(10)),
                      Container(
                        height: getH(30),
                        width: getW(168),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getH(8),
                          ),
                          color: const Color(0xff70ADEE),
                        ),
                        child: Center(
                          child: Text(
                            "Редактировать",
                            style:
                                Theme.of(context).textTheme.headline1?.copyWith(
                                      fontSize: getH(18),
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
