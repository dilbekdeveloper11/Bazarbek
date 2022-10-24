import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class InfoContainer{
  static info({required BuildContext context,required Widget rowWidget,required bool isShow}){
    return Container(
            height: getH(40),
            width: getW(335),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromRGBO(0, 0, 0, 0.15),
                  blurRadius: getH(4),
                  spreadRadius: getH(1),
                ),
              ],
              color: const Color(0xffEFF4FA),
              borderRadius: BorderRadius.circular(
                getH(5),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: getH(40),
                  width: getW(5),
                  decoration: BoxDecoration(
                    color: const Color(0xff70ADEE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        getH(5),
                      ),
                      topLeft: Radius.circular(
                        getH(5),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: getW(15)),
                rowWidget,
                const Spacer(),
                isShow==true ?Image.asset(
                  "assets/images/Vector 287 (Stroke).png",
                  color: const Color(0xff42445A),
                ): const SizedBox(),
                SizedBox(width: getW(13)),
                
              ],
            ),
          );
  }
}