import 'package:bozorbek/core/components/size_config.dart';
import 'package:bozorbek/screens/active_orders_page.dart';
import 'package:bozorbek/screens/auto_orders_page.dart';
import 'package:bozorbek/screens/card_information_page.dart';
import 'package:bozorbek/screens/catalog_page.dart';
import 'package:bozorbek/screens/home_page.dart';
import 'package:bozorbek/Registration_pages/login_page.dart';
import 'package:bozorbek/screens/my_profile_page.dart';
import 'package:bozorbek/screens/notification_page.dart';
import 'package:bozorbek/screens/orders_history_page.dart';
import 'package:bozorbek/screens/product_cards_page.dart';
import 'package:bozorbek/Registration_pages/registration_page.dart';
import 'package:bozorbek/screens/search_history_page.dart';
import 'package:bozorbek/screens/search_one_page.dart';
import 'package:bozorbek/screens/search_page.dart';
import 'package:bozorbek/screens/tasty_discounts_page.dart';
import 'package:bozorbek/Registration_pages/update_password_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "Medium",
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xff42445A),
          ),
          headline2: TextStyle(
            fontFamily: "GothamPro",
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: Color(0xff42445A),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}