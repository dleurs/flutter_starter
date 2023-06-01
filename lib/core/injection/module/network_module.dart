import 'package:dio/dio.dart';
import 'package:flutter_starter/core/constants/api_constants.dart';
import 'package:flutter_starter/features/authentication/domain/interceptor/authentication_interceptor.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetWorkModule {
  @lazySingleton
  @Named(ApiConstants.privateHttpClient)
  Dio getPrivateHttpClient() {
    return Dio()
      ..options.receiveTimeout = ApiConstants.receiveTimeout
      ..options.connectTimeout = ApiConstants.connectTimeout
      ..options.sendTimeout = ApiConstants.sendTimeout
      ..interceptors.add(AuthenticationInterceptor());
  }

  @lazySingleton
  @Named(ApiConstants.publicHttpClient)
  Dio getPublicHttpClient() {
    return Dio()
      ..options.receiveTimeout = ApiConstants.receiveTimeout
      ..options.connectTimeout = ApiConstants.connectTimeout
      ..options.sendTimeout = ApiConstants.sendTimeout;
  }
}
