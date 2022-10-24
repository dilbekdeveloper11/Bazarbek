import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LoginService {
  final path = "https://api.bozorbek.uz/";
  Dio dio = Dio();

  Future loginUser({required String username, required String password}) async {
    final url = "${path}customer/login/";
    final parametrs = {
      "username": username,
      "password": password,
    };
   try {
      Response res = await dio.post(url, data: parametrs);
    final data = res.data;
    if (data["access"].isEmpty) {
      return false;
    } else {
      return true;
    }
   } catch (e) {
     return false;
   }
  }
}
