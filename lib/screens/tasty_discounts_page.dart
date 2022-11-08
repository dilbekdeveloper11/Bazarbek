import 'package:bozorbek/bloc/discount_bloc/discount_cubit.dart';
import 'package:bozorbek/bloc/discount_bloc/discount_state.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/model/catalog_model.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/product_card/widgets/product_cards_container.dart';
import 'package:bozorbek/screens/product_card/widgets/tab_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TastyDiscountsPage extends StatelessWidget {
  String slagi;
  int selectTabBar;
  List<CatalogModel> data;
  TastyDiscountsPage(
      {Key? key,
      required this.selectTabBar,
      required this.data,
      required this.slagi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(
        context: context,
        text: "Вкусные скидки",
      ),
      body: DefaultTabController(
        length: data.length,
        initialIndex: selectTabBar,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: ((context) => DiscountCubit(slugg: slagi)),
            ),
          ],
          child: Column(
            children: [
              BlocBuilder<DiscountCubit,DiscountState>(builder: (context,state){
                return TabBar(
                  onTap: (value){
                    context.read<DiscountCubit>().getTabbarDiscount(selectSlag: data[value].slug.toString());
                  },
                physics: const BouncingScrollPhysics(),
                indicatorColor: const Color(0xff00CF53),
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: getH(10)),
                indicatorPadding: EdgeInsets.symmetric(horizontal: getH(20)),
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
              BlocBuilder<DiscountCubit,DiscountState>(builder: (context,state){
                if(state is DiscountLoadingState){
                  return const Center(child: CupertinoActivityIndicator(),);
                }else if(state is DiscountCompletedState){
                  var books=state.data;
                  print(books);
                  return Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: getW(17),
                    right: getW(17),
                  ),
                  child: TabBarView(
                    children: List.generate(data.length, (index) {
                      return Container(
                        child: books.isNotEmpty ? GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: getH(10),
                              mainAxisSpacing: getH(12),
                              mainAxisExtent: getH(250)
                            ),
                            itemBuilder: (context, index) {
                              return ProductContainer.productCards(
                                discounts: books[index].discount.toString(),
                                colors: Color(int.parse(books[index].backgroundColor.toString().replaceAll("#", "0x"),),),
                                context: context,
                                discount: true,
                                name: books[index].name.toString(),
                                category: books[index].category.toString(),
                                sum: books[index].maxPrice.toString(),
                                summa: books[index].price.toString(),
                                img: books[index].image.toString(),
                              );
                            },itemCount: books.length) : const Center(child: Text("ushbu kategoriyada chegirmaga tushgan mahsulotlar yoq"),)
                      );
                    }),
                  ),
                ),
              );
                }else{
                  return const Center(child: Text("Internet Error"),);
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
