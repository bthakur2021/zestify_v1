import 'dart:async';

import 'package:dio/dio.dart';

class NetworkCallInterceptor extends Interceptor {

  @override
  Future onRequest(RequestOptions options) {
    // TODO: implement onRequest
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    // TODO: implement onResponse
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    // TODO: implement onError
    return super.onError(err);
  }
}
