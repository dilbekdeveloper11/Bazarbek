import 'package:bozorbek/core/components/size_config.dart';
import 'package:flutter/material.dart';

class FormRow {
  static formRow({required BuildContext context,required String text,required String formText,required double width}) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          width: getW(width),
        ),
        Container(
          height: getH(34),
          width: getW(255),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              getH(5),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: getH(1),
                spreadRadius: getW(1),
                color: const Color.fromRGBO(0, 0, 0, 0.15),
              )
            ],
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: getH(11),
                left: getW(15),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: formText,
              hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
                    color: const Color(0xff42445A).withOpacity(0.3),
                    fontSize: getH(15),
                  ),
            ),
          ),
        )
      ],
    );
  }
}
