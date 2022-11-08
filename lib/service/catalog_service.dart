import 'package:bozorbek/model/catalog_model.dart';
import 'package:dio/dio.dart';

class CatalogService{
  final path="https://api.bozorbek.uz";
  Dio dio=Dio();
 
  Future<List<CatalogModel>?> catalogService()async{
    final url="${path}/products/categories/";
    try {
      Response res=await dio.get(url);
      print((res.data as List).map((e) => CatalogModel.fromJson(e)).toList());
      return (res.data as List).map((e) => CatalogModel.fromJson(e)).toList();
    } on DioError catch (e) {
      return null;
    }
  }
}