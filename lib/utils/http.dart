import 'package:dio/dio.dart';

class Http {
  get(String url, query) {
    return Dio().get(url, queryParameters: query);
  }

  post(String url, data) {
    return Dio().post(url, data: data);
  }
}
