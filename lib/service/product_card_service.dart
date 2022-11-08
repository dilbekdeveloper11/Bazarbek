import 'package:bozorbek/model/product_card_model.dart';
import 'package:bozorbek/model/random_product_model.dart';
import 'package:dio/dio.dart';

class ProductCardService{
  final path="https://api.bozorbek.uz";
  Dio dio=Dio();

  Future<List<Product>?> getproductcard({required String slug})async{
    final url="${path}/products";
   
   try {
     Response res=await dio.get("${url}/${slug}");
     ProductCardModel list= ProductCardModel.fromJson(res.data);
     return list.products;
   }on DioError catch (e) {
    print(e); 
   }
  }
}