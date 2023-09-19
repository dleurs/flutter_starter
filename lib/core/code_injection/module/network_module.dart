import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../constants/api_constants.dart';

@module
abstract class NetWorkModule {
  @lazySingleton
  @Named(ApiConstants.privateHttpClient)
  Dio getPrivateHttpClient() {
    return Dio();
    /* 
    ..interceptors.add(HeaderInterceptor())
    */
  }

  @lazySingleton
  @Named(ApiConstants.publicHttpClient)
  Dio getPublicHttpClient() {
    return Dio();
  }
}
