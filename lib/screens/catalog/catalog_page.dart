import 'package:bozorbek/bloc/Catalog_bloc/catalog_cubit.dart';
import 'package:bozorbek/bloc/Catalog_bloc/catalog_state.dart';
import 'package:bozorbek/core/components/app_bar.dart';
import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/catalog/widgets/catalog_widget.dart';
import 'package:bozorbek/screens/product_card/product_cards_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: MyAppBar.Appbar(context: context, text: "Каталог"),
      body: BlocBuilder<CatalogCubit, CatalogState>(builder: (context, state) {
        if (state is CatalogLoadingState) {
          return const Center(child: CupertinoActivityIndicator());
        } else if (state is CatalogCompletedState) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: getH(15),
                crossAxisSpacing: getH(10),
              ),
              itemBuilder: (context, index) {
                return CatalogContainer.catalogContainer(
                  funk: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductCards(
                          data: state.data,
                          selectTabBar: index,
                          slug: state.data[index].slug.toString(),
                        ),
                      ),
                    );
                  },
                  text: state.data[index].name.toString(),
                  rasm: state.data[index].getImage.toString(),
                  context: context,
                );
              },
              itemCount: state.data.length,
            ),
          );
        } else {
          return const Center(
            child: Text("Internet check Error"),
          );
        }
      }),
    );
  }
}
