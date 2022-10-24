import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/product_cards_container.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TastyDiscountsPage extends StatelessWidget {
  const TastyDiscountsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: MyAppBar.Appbar(context: context, text: "Карточки продуктов"),
        body: Column(
          children: [
            TabBar(
              indicatorPadding: EdgeInsets.symmetric(horizontal: getH(17)),
              // labelPadding: EdgeInsets.all(getH(20)),
              tabs: [
                Tab(
                  child: Container(
                    height: getH(40),
                    width: getW(100),
                    color: Colors.red,
                  ),
                ),
                Tab(
                  child: Container(
                    height: getH(40),
                    width: getW(100),
                    color: Colors.red,
                  ),
                ),
                Tab(
                  child: Container(
                    height: getH(40),
                    width: getW(100),
                    color: Colors.red,
                  ),
                ),
                Tab(
                  child: Container(
                    height: getH(40),
                    width: getW(300),
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: getH(10)),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: getW(17), right: getW(17)),
                child: Container(
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: getH(25),
                        mainAxisSpacing: getH(25),
                        crossAxisCount: 2,
                        mainAxisExtent: getH(260)),
                    itemBuilder: (context, index) {
                      return ProductContainer.productCards(context: context,discount: true);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
