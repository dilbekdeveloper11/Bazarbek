import 'package:bozorbek/bloc/Product_card_bloc/product_card_state.dart';

import 'package:bozorbek/model/product_card_model.dart';
import 'package:bozorbek/service/product_card_service.dart';
import 'package:bozorbek/service/random_product_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCardCubit extends Cubit<ProductCardState> {
  String slugs;

  ProductCardCubit({
    required this.slugs,
  }) : super(ProductCardLoadingState()) {
    getproductcard();
  }

  void getproductcard() async {
    emit(ProductCardLoadingState());
    await ProductCardService().getproductcard(slug: slugs).then((value) {
      if (value is List<Product>) {
        emit(ProductCardCompletedState(value));
      } else {
        emit(ProductCardErrorState());
      }
    });
  }

  void getproductcardTabBar({required String slag}) async {
    emit(ProductCardLoadingState());
    await ProductCardService().getproductcard(slug: slag).then((value) {
      if (value is List<Product>) {
        emit(ProductCardCompletedState(value));
      } else {
        emit(ProductCardErrorState());
      }
    });
  }
}
