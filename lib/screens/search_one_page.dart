import 'dart:ui';

import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchOnePage extends StatelessWidget {
  const SearchOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Поиск"),
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              width: getW(375),
              "assets/images/Rectangle 1502.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: getW(24),
            top: getH(190),
            child: Container(
              height: getH(50),
              width: getW(327),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  getH(89),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: getW(20)),
                  Text(
                    "Поиск",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const Spacer(),
                  const Icon(Icons.search, color: Color(0xff42445A), size: 30),
                  SizedBox(width: getW(15)),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: getH(460)),
              Padding(
                padding: EdgeInsets.only(left: getW(20)),
                child: Container(
                  height: getH(95),
                  width: getW(343),
                  child: Text(
                    "Добро пожаловать в Бозорбек. Найдите продукты которые вам нужны. ",
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: const Color(0xff42445A).withOpacity(0.8),
                        ),
                  ),
                ),
              ),
              SizedBox(height: getH(42)),
              Row(
                children: [
                  SizedBox(width: getW(69)),
                  Text(
                    "Перейти в главную",
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        ?.copyWith(color: const Color(0xff02B698)),
                  ),
                  SizedBox(width: getW(20)),
                  CircleAvatar(
                    radius: getH(25),
                    backgroundColor: const Color(0xffA3D8CE),
                    child: Center(
                      child: Image.asset("assets/images/Vector.png"),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
