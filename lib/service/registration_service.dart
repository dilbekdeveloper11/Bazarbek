import 'dart:convert';

import 'package:dio/dio.dart';

class AuthService {
  Dio dio = Dio();
  final String path = "https://api.bozorbek.uz/";

  Future<bool> registerUser({required String phone_num}) async {
    final url = "${path}customer/register/";

    try {
      Response res =
          await dio.post(url, data: {"phone_num": phone_num});

      if (res.statusCode == 200) {
        return true;
      } else if (res.statusCode == 400) {
        return false;
      } else {
        return false;
      }
    } on DioError catch (e) {
      return false;
    }
  }
}
