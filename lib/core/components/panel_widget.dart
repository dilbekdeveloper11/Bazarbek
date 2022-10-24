import 'dart:math';

import 'package:bozorbek/core/components/size_config.dart';
import 'package:bumble_scrollbar/bumble_scrollbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PanelWidget extends StatefulWidget {
  final ScrollController controllerr;
  final PanelController panelController;
  const PanelWidget({Key? key, required this.controllerr,required this.panelController}) : super(key: key);

  @override
  State<PanelWidget> createState() => _PanelWidgetState();
}

class _PanelWidgetState extends State<PanelWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> items = ['sort1', 'sort2', 'sort3', 'sort'];
    String? selectedItem = 'sort3';
    
    Color getRandomColor() {
      return Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255));
    }

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: getH(10)),
        Container(
          padding: EdgeInsets.only(
            top: getH(10),
            left: getW(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getW(123)),
                child: Container(
                  height: getH(4),
                  width: getW(89),
                  decoration: BoxDecoration(
                    color: const Color(0xff42445A).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(
                      getH(2),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getH(15)),
              Text(
                "Авакадо",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      fontSize: getH(35),
                    ),
              ),
              SizedBox(height: getH(15)),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "40.000 ",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontSize: getH(25),
                            color: const Color(0xff02B698),
                          ),
                    ),
                    TextSpan(
                      text: "Сум   ",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            fontSize: getH(16),
                            color: const Color(0xff02B698),
                          ),
                    ),
                    TextSpan(
                      text: "(40.000 Сум - за 1 кг)",
                      style: TextStyle(
                        fontSize: getH(15),
                        color: const Color(0xffB8B8B8),
                        fontFamily: "GothamPro",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getH(20)),
              Row(
                children: [
                  Container(
                    width: getW(75),
                    height: getH(35),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(5)),
                      border: Border.all(
                        color: Color(0xff42445A).withOpacity(0.25),
                      ),
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(getH(5)),
                      underline: const SizedBox(),
                      value: selectedItem,
                      items: items
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (item) => setState(() {
                        selectedItem = item;
                      }),
                    ),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    width: getW(75),
                    height: getH(35),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(5)),
                      border: Border.all(
                        color: Color(0xff42445A).withOpacity(0.25),
                      ),
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(getH(5)),
                      underline: const SizedBox(),
                      value: selectedItem,
                      items: items
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (item) => setState(() {
                        selectedItem = item;
                      }),
                    ),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    width: getW(75),
                    height: getH(35),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(5)),
                      border: Border.all(
                        color: Color(0xff42445A).withOpacity(0.25),
                      ),
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(getH(5)),
                      underline: const SizedBox(),
                      value: selectedItem,
                      items: items
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (item) => setState(() {
                        selectedItem = item;
                      }),
                    ),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    width: getW(75),
                    height: getH(35),
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(5)),
                      border: Border.all(
                        color: Color(0xff42445A).withOpacity(0.25),
                      ),
                    ),
                    child: DropdownButton<String>(
                      borderRadius: BorderRadius.circular(getH(5)),
                      underline: const SizedBox(),
                      value: selectedItem,
                      items: items
                          .map(
                            (item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (item) => setState(() {
                        selectedItem = item;
                      }),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getH(70)),
              Padding(
                padding: EdgeInsets.only(right: getW(10)),
                child: Container(
                  height: getH(160),
                  width: getW(350),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white.withOpacity(0.15)),
                    borderRadius: BorderRadius.circular(getH(5)),
                    color: const Color(0xffCFE0AD).withOpacity(0.1),
                  ),
                  child: BumbleScrollbar(
                    backgroundColor: const Color(0xffC4C4C4).withOpacity(0.5),
                    alignment: Alignment.centerRight,
                    thumbColor: Colors.white,
                    padding: EdgeInsets.zero,
                    child: Padding(
                      padding: EdgeInsets.only(top: getH(10), left: getW(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Информацияя",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          SizedBox(height: getH(15)),
                          Rows(context,"Объем продукта:",55,"13"),
                          SizedBox(height: getH(10)),
                          Rows(context, "Артикул :", 111, "FR-1"),
                          SizedBox(height: getH(10)),
                          Rows(context, "Органик :", 111, "Да"),
                          SizedBox(height: getH(10)),
                          Rows(context, "Производитель :", 58, "Садоводство"),
                          SizedBox(height: getH(29),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: getH(20)),
              Row(
                children: [
                  Container(
                    height: getH(25),
                    width: getW(25),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff4BAD74)),
                      borderRadius: BorderRadius.circular(
                        getH(9),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          fontSize: getH(12),
                          color: const Color(0xff4BAD74),
                          fontFamily: "GothamPro",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    height: getH(35),
                    width: getW(35),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 2,
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(getH(9)),
                      color: const Color(0xffD9F5E9),
                    ),
                    child: Center(
                      child: Text(
                        "0.5",
                        style: TextStyle(
                            fontSize: getH(12),
                            color: const Color(0xff4BAD74),
                            fontFamily: "GothamPro"),
                      ),
                    ),
                  ),
                  SizedBox(width: getW(12)),
                  Container(
                    height: getH(25),
                    width: getW(25),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff4BAD74)),
                      borderRadius: BorderRadius.circular(
                        getH(9),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: getH(12),
                          color: const Color(0xff4BAD74),
                          fontFamily: "GothamPro",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: getW(35)),
                  Container(
                    height: getH(37),
                    width: getW(178),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(getH(8)),
                      color: const Color(0xff02B698),
                    ),
                    child: Center(
                      child: Text(
                        "В корзину",
                        style: TextStyle(
                          fontSize: getH(20),
                          color: Colors.white,
                          fontFamily: "GothamPro",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row Rows(BuildContext context,String textOne,double width,String textTwo) {
    return Row(
      children: [
        Text(
          textOne,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(width: getW(width)),
        Text(
          textTwo,
          style: Theme.of(context).textTheme.headline2,
        ),
      ],
    );
  }
}
