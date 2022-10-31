import 'package:bozorbek/model/random_product_model.dart';
import 'package:dio/dio.dart';

class ProductService{
  final path="https://api.bozorbek.uz";
  Dio dio=Dio();

  Future<List<ProductModel>?> getProduct()async{
    final url="${path}/products/random_products/";
    try {
      Response res=await dio.get(url);
      return (res.data as List).map((e) => ProductModel.fromJson(e)).toList();
    }catch (e) {
      print(e);
    }
  }

}