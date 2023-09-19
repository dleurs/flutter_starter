import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/fruit_entity.dart';
import '../../domain/repository_abstract/fruit_repository.dart';
import '../data_sources/fruit_api.dart';
import '../mapper/fruit_mapper.dart';
import '../models/fruit_model.dart';

@Injectable(as: FruitRepository)
class FruitRepositoryImpl implements FruitRepository {
  FruitRepositoryImpl(this._fruitApi);
  final FruitApi _fruitApi;

  @override
  Future<Either<Exception, List<FruitEntity>>> getFruits() async {
    try {
      final List<FruitModel> fruitsModel = await _fruitApi.getFruits();
      final List<FruitEntity> fruits = fruitsModel.toEntity();
      return Right<Exception, List<FruitEntity>>(fruits);
    } on Exception catch (ex) {
      return Left<Exception, List<FruitEntity>>(ex);
    }
  }
}
