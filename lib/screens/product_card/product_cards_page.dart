import 'package:bozorbek/bloc/Product_card_bloc/product_card_cubit.dart';
import 'package:bozorbek/bloc/Product_card_bloc/product_card_state.dart';

import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/model/catalog_model.dart';
import 'package:bozorbek/screens/product_card/widgets/discounts_container.dart';
import 'package:bozorbek/screens/product_card/widgets/product_cards_container.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/product_card/widgets/tab_container.dart';
import 'package:bozorbek/screens/tasty_discounts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductCards extends StatelessWidget {
  String slug;
  int selectTabBar;
  List<CatalogModel> data;
  ProductCards({
    Key? key,
    required this.slug,
    required this.selectTabBar,
    required this.data,
  }) : super(key: key);
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Карточки продуктов"),
      body: DefaultTabController(
        length: data.length,
        initialIndex: selectTabBar,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: ((context) => ProductCardCubit(slugs: slug)),
            ),
          ],
          child: Column(
            children: [
              BlocBuilder<ProductCardCubit, ProductCardState>(
                  builder: (context, state) {
                return TabBar(
                  onTap: (value) {
                    selectedIndex = value;
                    context.read<ProductCardCubit>().getproductcardTabBar(
                        slag: data[value].slug.toString());
                  },
                  physics: const BouncingScrollPhysics(),
                  indicatorColor: const Color(0xff00CF53),
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: getH(10)),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: getH(20)),
                  // labelPadding: EdgeInsets.all(getH(20)),
                  tabs: List.generate(
                    data.length,
                    (index) => Tab(
                      child: TabContainer.tabContainer(
                        context: context,
                        text: data[index].name.toString(),
                      ),
                    ),
                  ),
                );
              }),
              SizedBox(height: getH(10)),
              BlocBuilder<ProductCardCubit, ProductCardState>(
                  builder: (context, state) {
                if (state is ProductCardLoadingState) {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                } else if (state is ProductCardCompletedState) {
                  var info = state.data;
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: getW(17), right: getW(17)),
                      child: TabBarView(
                        physics: const NeverScrollableScrollPhysics(),
                        children: List.generate(
                          data.length,
                          (item) => Container(
                            child: StaggeredGridView.countBuilder(
                              crossAxisCount: 2,
                              crossAxisSpacing: getH(10),
                              mainAxisSpacing: getH(12),
                              padding: EdgeInsets.zero,
                            
                              physics: const BouncingScrollPhysics(),
                              itemCount: info.length,
                              itemBuilder: ((context, index) {
                                if (index == 1) {
                                  return InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: ((context) =>
                                              TastyDiscountsPage(
                                                slagi: data[selectedIndex].slug.toString(),
                                                selectTabBar: selectedIndex,
                                                data: data,
                                              )),
                                        ),
                                      );
                                    },
                                    child: DiscountContainers.discountcards(
                                      context: context,
                                    ),
                                  );
                                } else {
                                  return ProductContainer.productCards(
                                    colors: Color(
                                      int.parse(
                                        info[index]
                                            .backgroundColor
                                            .toString()
                                            .replaceAll("#", "0x"),
                                      ),
                                    ),
                                    discounts: '',
                                    img: info[index].image.toString(),
                                    name: info[index].name.toString(),
                                    category: info[index].category.toString(),
                                    sum: info[index].maxPrice.toString(),
                                    summa: info[index].price.toString(),
                                    context: context,
                                    discount: false,
                                  );
                                }
                              }),
                              staggeredTileBuilder: ((index) {
                                return StaggeredTile.count(
                                
                                  1,
                                  index == 1 ? 0.85 : 1.4,
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return const Center(
                    child: Text("Internet Error"),
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
