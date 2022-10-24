import 'package:dio/dio.dart';

class SetPassword {
  Dio dio = Dio();
  final String path = "https://api.bozorbek.uz/";

  Future passwordService({
    required String number,
    required String sms,
    required String password,
    required String names,
  }) async {
    final url = "${path}customer/set_password/";
    final parametrs = {
      "phone_num": number,
      "sms_code": sms,
      "password": password,
      "first_name": names,
    };
    try {
      Response res = await dio.post(url, data: parametrs);
    if (res.statusMessage=="Created") {
      return true;
    } else {
      return false;
    }
    } catch (e) {
      return false;
    }
  }
}
