import 'package:dio/dio.dart';

class MyApi {
  final dio = Dio();

  postHttp(dynamic url, Map<String, dynamic> params) async {
    dynamic response = await dio.post(url, data: params);
    return response;
  }
}
