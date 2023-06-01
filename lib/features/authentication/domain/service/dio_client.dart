import 'package:dio/dio.dart';
import 'package:flutter_starter/core/constants/api_constants.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class DioClient {
  late final Dio _dio = Dio();

  DioClient() {
    _dio.options = BaseOptions(
      //baseUrl: BASE_URL, // the place for your ,base url
      receiveTimeout: ApiConstants.receiveTimeout,
      connectTimeout: ApiConstants.connectTimeout,
      sendTimeout: ApiConstants.sendTimeout,
    );
  }

  Dio get dio => _dio;
}
