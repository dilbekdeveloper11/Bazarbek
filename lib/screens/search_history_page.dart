import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/cut_container.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchHistoryPage extends StatelessWidget {
  const SearchHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "История поиска"),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: getH(22), left: getW(20)),
              child: Row(
                children: [
                  Text(
                    "12 Марта-12.03.2022 г",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: const Color(0xff00CF53),
                        ),
                  ),
                  SizedBox(width: getW(15)),
                  Container(
                    height: getH(28),
                    width: getW(159),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getH(5),
                      ),
                      color: const Color(0xff70ADEE),
                    ),
                    child: Center(
                      child: Text(
                        "Очистить историю",
                        style: Theme.of(context)
                            .textTheme
                            .headline2
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Container(
                  height: getH(68),
                  margin: EdgeInsets.only(
                      left: getH(20), right: getW(10), top: getH(20)),
                  width: getW(345),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(0, 0, 0, 0.15),
                          spreadRadius: getH(1),
                          blurRadius: getH(5)),
                    ],
                    borderRadius: BorderRadius.circular(
                      getH(5),
                    ),
                    color: const Color(0xffEEF3F9),
                  ),
                  child: Row(
                    children: [
                      CutContainer.cut(
                        height: 68,
                        width: 5,
                        borderRadius: 20,
                        color: const Color(0xff00CF53),
                      ),
                      SizedBox(width: getW(15)),
                      Container(
                        height: getH(15),
                        width: getW(15),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromRGBO(0, 0, 0, 0.15),
                                spreadRadius: getH(1),
                                blurRadius: getH(4)),
                          ],
                          borderRadius: BorderRadius.circular(
                            getH(3),
                          ),
                          color: Colors.white,
                        ),
                        child: Checkbox(
                          side: BorderSide.none,
                          activeColor: Colors.white,
                          value: false,
                          checkColor: Colors.grey,
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(width: getW(10)),
                      Text(
                        "Яблоко",
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(width: getW(155)),
                      Container(
                        height: getH(25),
                        width: getW(25),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/refresh 1.png",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: getW(20)),
                      Container(
                        height: getH(25),
                        width: getW(25),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/delete 1.png",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 5,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: getH(88),
            ),
          ),
        ],
      ),
    );
  }
}
