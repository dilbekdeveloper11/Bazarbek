import 'package:bozorbek/model/product_card_model.dart';

abstract class ProductCardState{
  ProductCardState();
}

class ProductCardLoadingState extends ProductCardState{
  ProductCardLoadingState();
}
class ProductCardLoadingStateFirst extends ProductCardState{
  ProductCardLoadingStateFirst();
}

class ProductCardCompletedState extends ProductCardState{
  List<Product> data;
  ProductCardCompletedState(this.data);
}

class ProductCardErrorState extends ProductCardState{
  ProductCardErrorState();
}

class ProductCardChangeState extends ProductCardState{
  List<Product> maps;
  ProductCardChangeState(this.maps);
}