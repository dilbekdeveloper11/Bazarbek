import 'package:bloc/bloc.dart';
import 'package:bozorbek/bloc/Catalog_bloc/catalog_state.dart';
import 'package:bozorbek/model/catalog_model.dart';
import 'package:bozorbek/service/catalog_service.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit() : super(CatalogLoadingState()){
    getCatalog();
  }

  void getCatalog() async {
    emit(CatalogLoadingState());
    await CatalogService().catalogService().then((value) {
      if (value is List<CatalogModel>) {
        emit(CatalogCompletedState(value));
      } else {
        emit(CatalogErrorState());
      }
    });
  }
}
