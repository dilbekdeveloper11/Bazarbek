import 'package:bozorbek/bloc/home_bloc/home_state.dart';
import 'package:bozorbek/model/random_product_model.dart';
import 'package:bozorbek/model/slider_model.dart';
import 'package:bozorbek/service/random_product_service.dart';
import 'package:bozorbek/service/slider_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit():super(HomeLoadingState());


  void getslider()async{
    emit(HomeLoadingState());
    await SliderService().getSliders().then((value){
      if(value is List<Result>){
        emit(HomeSliderCompleted(value));
      }else{
        emit(HomeErrorState(value));
      }
    });
  }

  void getProduct()async{
    emit(HomeLoadingState());
    await ProductService().getProduct().then((value){
      if(value is List<ProductModel>){
        emit(HomeProductCompleted(value));
      }else{
        emit(HomeErrorState(value));
      }
    });
  }
}