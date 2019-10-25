import 'dart:convert';

import 'package:dio/dio.dart';
// import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class Http {
  static Http _request;
  static Http request() {
    if (_request = null) {
      _request = Http();
    }
    return _request;
  }

  static BaseOptions _options = BaseOptions(
    // contentType: CONTENT_TYPE,
    connectTimeout: 60,
    receiveTimeout: 60,
    // baseUrl: HOST,
  );
  Dio _dio = Dio(_options);
  get(String url, params, {cancelToken}) {
    _requestHttp('get', url, params, cancelToken);
  }

  post(String url, data, {cancelToken}) {
    _requestHttp('post', url, data, cancelToken);
  }

  _requestHttp(method, String url, params, CancelToken cancelToken) async {
    Response response;
    try {
      switch (method) {
        case 'get':
          response = await _dio.get(
            url,
            queryParameters: params,
            cancelToken: cancelToken,
          );
          return new Future(() {
            return response.data;
          });
        case 'post':
          response = await _dio.post(
            url,
            data: json.encode(params),
            cancelToken: cancelToken,
          );
          return new Future(() {
            return response.data;
          });
      }
    } catch (err) {
      print(err);
    }
  }
}
