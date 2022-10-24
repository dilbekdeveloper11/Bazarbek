import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Каталог"),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
             
              height: getH(150),
              width: getW(157),
             
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  getH(15),
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/unsplash_EPwuZxdketc.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: getH(20)),
                  Row(
                    children: [
                      SizedBox(width: getW(20)),
                      Text(
                        "Овощи",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            ?.copyWith(fontSize: getH(15), color: Colors.white),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: const Color(0xff42445A),
                        size: getH(24),
                      ),
                      SizedBox(width: getW(20)),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
