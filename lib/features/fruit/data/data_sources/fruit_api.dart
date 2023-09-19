import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/fruit_model.dart';

part 'fruit_api.g.dart';

@lazySingleton
@RestApi(
  baseUrl: ApiConstants.fruitsClient,
)
abstract class FruitApi {
  factory FruitApi(@Named(ApiConstants.publicHttpClient) Dio dio) = _FruitApi;

  @factoryMethod
  static FruitApi create(@Named(ApiConstants.publicHttpClient) Dio dio) {
    return FruitApi(dio);
  }

  @GET('${ApiConstants.apiFruitPath}/all')
  Future<List<FruitModel>> getFruits();
}
