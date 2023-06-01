import 'package:dio/dio.dart';
import 'package:flutter_starter/core/constants/api_constants.dart';

class AuthenticationInterceptor extends InterceptorsWrapper {
  AuthenticationInterceptor();

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll(
      {
        ApiConstants.authorization: "${ApiConstants.bearer} tokenhere",
      },
    );

    handler.next(options);
  }
}
