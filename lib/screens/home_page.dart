import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<String> imgList = [
    "assets/images/unsplash_zeFy-oCUhV8.png",
    "assets/images/unsplash_zeFy-oCUhV8.png",
    "assets/images/unsplash_zeFy-oCUhV8.png",
    "assets/images/unsplash_zeFy-oCUhV8.png"
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Главная"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: getH(10)),
          Container(
            height: getH(140),
            width: double.infinity,
            child: CarouselSlider(
              carouselController: CarouselController(),
              options: CarouselOptions(
                enlargeCenterPage: false,
                viewportFraction: 0.75,
                height: getH(139),
                autoPlay: true,
              ),
              items: imgList
                  .map(
                    (item) => Container(
                      height: getH(139),
                      width: getW(289),
                      padding: EdgeInsets.symmetric(horizontal: getH(10)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getH(21),
                        ),
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(height: getH(20)),
          Row(
            children: [
              SizedBox(width: getW(20)),
              Text(
                "Все продукты",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: const Color(0xff42445A).withOpacity(0.8),
                    ),
              ),
            ],
          ),
          SizedBox(height: getH(20)),
          Padding(
            padding: EdgeInsets.only(left: getW(10)),
            child: Container(
              height: getH(230),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return Container(
                    height: getH(235),
                    width: getW(130),
                    child: index == 3
                        ? Container(
                            height: getH(235),
                            width: getW(30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/images/down-arrow (2) 2.png"),
                                SizedBox(height: getH(10)),
                                Text(
                                  "Показать все",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline1
                                      ?.copyWith(
                                        fontSize: getH(10),
                                      ),
                                ),
                              ],
                            ),
                          )
                        : Stack(
                            children: [
                              Container(
                                height: getH(235),
                                width: getW(123),
                                margin:
                                    EdgeInsets.symmetric(horizontal: getW(5)),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getH(15),
                                  ),
                                  color: const Color(0xffE3D5C7),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getW(10), top: getH(15)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Броколи",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            ?.copyWith(
                                              fontSize: getH(15),
                                              color: Colors.white,
                                            ),
                                      ),
                                      Text(
                                        "Органик продукт",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline1
                                            ?.copyWith(
                                              fontSize: getH(12),
                                              color: const Color(0xff42445A)
                                                  .withOpacity(0.3),
                                            ),
                                      ),
                                      SizedBox(height: getH(10)),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "50.000 ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  ?.copyWith(
                                                    fontSize: getH(15),
                                                  ),
                                            ),
                                            TextSpan(
                                              text: "Сум",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline1
                                                  ?.copyWith(
                                                    fontSize: getH(10),
                                                  ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: getH(90),
                                left: getW(24),
                                child: Image.asset(
                                  "assets/images/unsplash_FZJO5-NFVzI.png",
                                ),
                              ),
                              Positioned(
                                top: getH(200),
                                left: getW(28),
                                child: Image.asset(
                                  "assets/images/Ellipse 244.png",
                                ),
                              ),
                            ],
                          ),
                  );
                }),
                itemCount: 4,
              ),
            ),
          ),
          SizedBox(height: getH(20)),
          Row(
            children: [
              SizedBox(width: getW(20)),
              Text(
                "Вкусные скидки",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: const Color(0xff42445A).withOpacity(0.8),
                    ),
              ),
            ],
          ),
          SizedBox(height: getH(20)),
          Padding(
            padding: EdgeInsets.only(left: getW(10)),
            child: Container(
              height: getH(230),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) {
                  return index == 3
                      ? Container(
                          height: getH(235),
                          width: getW(130),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/down-arrow (2) 2.png"),
                              SizedBox(height: getH(10)),
                              Text(
                                "Показать все",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline1
                                    ?.copyWith(
                                      fontSize: getH(10),
                                    ),
                              ),
                            ],
                          ),
                        )
                      : Stack(
                          children: [
                            Container(
                              height: getH(235),
                              width: getW(123),
                              margin: EdgeInsets.symmetric(horizontal: getW(5)),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getH(15),
                                ),
                                color: const Color(0xffE3D5C7),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: getW(10), top: getH(15)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Броколи",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          ?.copyWith(
                                            fontSize: getH(15),
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      "Органик продукт",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline1
                                          ?.copyWith(
                                            fontSize: getH(12),
                                            color: const Color(0xff42445A)
                                                .withOpacity(0.3),
                                          ),
                                    ),
                                    SizedBox(height: getH(10)),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "50.000 ",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(
                                                  fontSize: getH(15),
                                                ),
                                          ),
                                          TextSpan(
                                            text: "Сум",
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline1
                                                ?.copyWith(
                                                  fontSize: getH(10),
                                                ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: getH(10)),
                                    Row(
                                      children: [
                                        SizedBox(width: getW(50)),
                                        Text(
                                          "15.000 Сум",
                                          style: TextStyle(
                                            fontSize: getH(10),
                                            color: Colors.white,
                                            fontFamily: "GothamPro",
                                            decorationColor: Colors.red,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: getH(116),
                              left: getW(10),
                              child: Image.asset(
                                "assets/images/image 9.png",
                              ),
                            ),
                            Positioned(
                              top: getH(200),
                              left: getW(28),
                              child: Image.asset(
                                "assets/images/Ellipse 244.png",
                              ),
                            ),
                          ],
                        );
                }),
                itemCount: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
