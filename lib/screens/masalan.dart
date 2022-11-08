import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
   MyWidget({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("salom"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String color="#FFC8A2C8";
          var colors=color.split("#");
          print(colors);
          print(colors[1]);
          print(colors[1].runtimeType);
          
        var dd=Color(int.parse(color.replaceAll('#', '0x')));
        print(dd);

        },
        child:  Icon(Icons.add,),
      ),
    );
  }
}
