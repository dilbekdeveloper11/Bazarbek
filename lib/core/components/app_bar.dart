import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  static Appbar({required BuildContext context, required String text}) {
    return AppBar(
      
      leading: GestureDetector(
        child: Icon(Icons.arrow_back_ios,color: const Color(0xff42445A),size: getH(20),),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(
            getH(20),
          ),
          bottomLeft: Radius.circular(
            getH(20),
          ),
        ),
      ),
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
