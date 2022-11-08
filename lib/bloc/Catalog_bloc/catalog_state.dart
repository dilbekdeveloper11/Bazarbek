import 'package:bozorbek/model/catalog_model.dart';

abstract class CatalogState {
  CatalogState();
}

class CatalogLoadingState extends CatalogState {
  CatalogLoadingState();
}

class CatalogCompletedState extends CatalogState {
  List<CatalogModel> data;
  CatalogCompletedState(this.data);
}

class CatalogErrorState extends CatalogState {
  CatalogErrorState();
}
