import 'package:bozorbek/model/discount_model.dart';
import 'package:dio/dio.dart';

class DiscountService{
  final path="https://api.bozorbek.uz";
  Dio dio=Dio();

  Future getDiscount({required String slug})async{
   final url="$path/products/discount_products/";
  try {
    Response res=await dio.get("$url?category=$slug");
    DiscountModel lists= await DiscountModel.fromJson(res.data);
    return lists.results;
  } on DioError catch (e) {
    print(e);
  }
  }
}