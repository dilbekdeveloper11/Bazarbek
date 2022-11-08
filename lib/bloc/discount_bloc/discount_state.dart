import 'package:bozorbek/model/discount_model.dart';

abstract class DiscountState{
  DiscountState();
}

class DiscountLoadingState extends DiscountState{
  DiscountLoadingState();
}

class DiscountCompletedState extends DiscountState{
  List<Results> data;
  DiscountCompletedState(this.data);
}

class DiscountErrorState extends DiscountState{
  DiscountErrorState();
}