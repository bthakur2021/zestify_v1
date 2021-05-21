import 'dart:async';
import 'dart:collection';

import 'package:dio/dio.dart';

import 'NetworkCallInterceptor.dart';

class ApiHandler {
  static final String _ContentTypeJson = "application/json";

  static final String _PRODUCTION_URL = "http://134.209.150.223:9896";

  static final String _ACTIVE_URL = _PRODUCTION_URL;

  static final String BASE_URL = "$_ACTIVE_URL/mobilecafe/api/v1";

  static final Duration _reqTimeOut = new Duration(seconds: 60);
  static final Duration _resTimeOut = new Duration(seconds: 60);

  static const String _progressMessage = "Please wait ...";
  static ApiHandler _instance;
  static Dio _api;

  static const String KEY_AUTHORIZATION = "Authorization";
  static const String KEY_X_AUTH_TOKEN = "x-auth-token";

  static ApiHandler getInstance() {
    if (_instance == null) _instance = new ApiHandler();

    return _instance;
  }

  static Future<Dio> getApiFromUrl(String url) async {
    Dio _api = new Dio();

    _api.options.baseUrl = url;
    //_api.options.contentType = ContentType.parse("application/json");
    _api.options.contentType = _ContentTypeJson;
    _api.interceptors.add(NetworkCallInterceptor());
    _api.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));

    var headers = await ApiHandler.getHeaders();
    _api.options.headers.addAll(headers);

    return _api;
  }

  /// dio instance method.
  static Future<Dio> getApi() async {
    if (_api == null) {
      _api = new Dio();

      _api.options.baseUrl = BASE_URL;
      //_api.options.contentType = ContentType.parse("application/json");
      _api.options.contentType = _ContentTypeJson;
      _api.interceptors.add(NetworkCallInterceptor());
      _api.interceptors
          .add(LogInterceptor(requestBody: true, responseBody: true));
    }

    if (_api != null) {
      /*var isLogin = await SharedPrefUtil.isLogin();
      var loginData = await SharedPrefUtil.getLoginData();
      if (isLogin && loginData?.data?.token != null) {
        if (_api.options.headers.containsKey(KEY_AUTHORIZATION)) {
          _api.options.headers.remove(KEY_AUTHORIZATION);
        }
        _api.options.headers[KEY_X_AUTH_TOKEN] = loginData?.data?.token;
      } else {
        if (_api.options.headers.containsKey(KEY_X_AUTH_TOKEN)) {
          _api.options.headers.remove(KEY_X_AUTH_TOKEN);
        }
      }*/

      return _api;
    }

    return _api;
  }

  static Future<Map<String, String>> getHeaders() async {
    Map<String, String> headers = HashMap();

    return headers;
  }
}
