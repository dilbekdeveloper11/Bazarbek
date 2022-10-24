import 'package:dio/dio.dart';

class VerifyService {
  Dio dio = Dio();
  final String path = "https://api.bozorbek.uz/";

  Future verifyUser(
      {required String phone_number, required String sms_code}) async {
    final url = "${path}customer/verify/";

    try {
      Response response = await dio
          .post(url, data: {"phone_num": phone_number, "sms_code": sms_code});
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
