import 'package:bozorbek/model/random_product_model.dart';
import 'package:bozorbek/model/slider_model.dart';

abstract class HomeState{
  HomeState();
}

class HomeInitialState extends HomeState{
  HomeInitialState();
}

class HomeLoadingState extends HomeState{
  HomeLoadingState();
}

class HomeSliderCompleted extends HomeState{
  List<Result> data;
  HomeSliderCompleted(this.data);
}

class HomeProductCompleted extends HomeState{
  List<ProductModel> data;
  HomeProductCompleted(this.data);
}

class HomeErrorState extends HomeState{
  var error;
  HomeErrorState(this.error);
}

// Container(
//               height: getH(230),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: ((context, index) {
//                   return Container(
//                     height: getH(235),
//                     width: getW(130),
//                     child: index == 3
//                         ? Container(
//                             height: getH(235),
//                             width: getW(30),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image.asset(
//                                     "assets/images/down-arrow (2) 2.png"),
//                                 SizedBox(height: getH(10)),
//                                 Text(
//                                   "Показать все",
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .headline1
//                                       ?.copyWith(
//                                         fontSize: getH(10),
//                                       ),
//                                 ),
//                               ],
//                             ),
//                           )
//                         : Stack(
//                             children: [
//                               Container(
//                                 height: getH(235),
//                                 width: getW(123),
//                                 margin:
//                                     EdgeInsets.symmetric(horizontal: getW(5)),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                     getH(15),
//                                   ),
//                                   color: const Color(0xffE3D5C7),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.only(
//                                       left: getW(10), top: getH(15)),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         "Броколи",
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .headline1
//                                             ?.copyWith(
//                                               fontSize: getH(15),
//                                               color: Colors.white,
//                                             ),
//                                       ),
//                                       Text(
//                                         "Органик продукт",
//                                         style: Theme.of(context)
//                                             .textTheme
//                                             .headline1
//                                             ?.copyWith(
//                                               fontSize: getH(12),
//                                               color: const Color(0xff42445A)
//                                                   .withOpacity(0.3),
//                                             ),
//                                       ),
//                                       SizedBox(height: getH(10)),
//                                       RichText(
//                                         text: TextSpan(
//                                           children: [
//                                             TextSpan(
//                                               text: "50.000 ",
//                                               style: Theme.of(context)
//                                                   .textTheme
//                                                   .headline1
//                                                   ?.copyWith(
//                                                     fontSize: getH(15),
//                                                   ),
//                                             ),
//                                             TextSpan(
//                                               text: "Сум",
//                                               style: Theme.of(context)
//                                                   .textTheme
//                                                   .headline1
//                                                   ?.copyWith(
//                                                     fontSize: getH(10),
//                                                   ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 top: getH(90),
//                                 left: getW(24),
//                                 child: Image.asset(
//                                   "assets/images/unsplash_FZJO5-NFVzI.png",
//                                 ),
//                               ),
//                               Positioned(
//                                 top: getH(200),
//                                 left: getW(28),
//                                 child: Image.asset(
//                                   "assets/images/Ellipse 244.png",
//                                 ),
//                               ),
//                             ],
//                           ),
//                   );
//                 }),
//                 itemCount: 4,
//               ),
//             ),