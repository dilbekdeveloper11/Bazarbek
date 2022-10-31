import 'package:bozorbek/model/slider_model.dart';
import 'package:dio/dio.dart';

class SliderService{
  final path="https://api.bozorbek.uz";
  Dio dio=Dio();

  Future<List<Result>?> getSliders()async{
    final url="${path}/sliders";

    try {
      Response res = await dio.get(url);
      SliderModel list= await SliderModel.fromJson(res.data);
    
      return list.results;
    } catch (e) {
      return null;
    }
  }
}