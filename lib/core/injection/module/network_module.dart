import 'package:dio/dio.dart';
import 'package:flutter_starter/core/constants/api_constants.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetWorkModule {
  @lazySingleton
  @Named(ApiConstants.privateHttpClient)
  Dio getPrivateHttpClient() {
    return Dio();
    /* ..options.followRedirects = false
      ..options.baseUrl = config.apiConfig.apiUrl
      ..options.connectTimeout = AppConstants.connectTimeout.inMilliseconds
      ..options.receiveTimeout = AppConstants.receiveTimeout.inMilliseconds
      ..options.sendTimeout = AppConstants.sendTimeout.inMilliseconds
      ..interceptors.add(HeaderInterceptor())
      ..interceptors.add(LoggingInterceptor())
      ..addAliceInterceptor(config.flavor, alice)
      ..addCharlesProxyCertificate(flavor: config.flavor)
      ..addOauthBearerInterceptor()
      ..addErrorInterceptor(); */
  }

  @lazySingleton
  @Named(ApiConstants.publicHttpClient)
  Dio getPublicHttpClient() {
    return Dio();
    /* ..options.followRedirects = false
      ..options.baseUrl = config.apiConfig.apiUrl
      ..options.connectTimeout = AppConstants.connectTimeout.inMilliseconds
      ..options.receiveTimeout = AppConstants.receiveTimeout.inMilliseconds
      ..options.sendTimeout = AppConstants.sendTimeout.inMilliseconds
      ..interceptors.add(LoggingInterceptor())
      ..addAliceInterceptor(config.flavor, alice)
      ..addCharlesProxyCertificate(flavor: config.flavor)
      ..addErrorInterceptor(); */
  }
}
