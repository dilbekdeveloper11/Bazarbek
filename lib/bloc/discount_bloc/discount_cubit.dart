
import 'package:bloc/bloc.dart';
import 'package:bozorbek/bloc/discount_bloc/discount_state.dart';
import 'package:bozorbek/model/discount_model.dart';
import 'package:bozorbek/service/discount_service.dart';

class DiscountCubit extends Cubit<DiscountState>{
  String slugg;
  DiscountCubit({required this.slugg}):super(DiscountLoadingState()){
    getDiscount();
  }

  void getDiscount()async{
    emit(DiscountLoadingState());
    await DiscountService().getDiscount(slug: slugg).then((value){
      if(value is List<Results>){
        emit(DiscountCompletedState(value));
      }else{
        emit(DiscountErrorState());
      }
    });
  }

  void getTabbarDiscount({required String selectSlag})async{
    emit(DiscountLoadingState());
    await DiscountService().getDiscount(slug: selectSlag).then((value){
      if(value is List<Results>){
        emit(DiscountCompletedState(value));
      }else{
        emit(DiscountErrorState());
      }
    });
  }
}