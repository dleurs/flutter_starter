import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/fruit/data/data_sources/fruit_api.dart';
import 'package:flutter_starter/features/fruit/data/mapper/fruit_mapper.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_starter/features/fruit/domain/repository/fruit_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: FruitRepository)
class FruitRepositoryImpl implements FruitRepository {
  final FruitApi _fruitApi;
  FruitRepositoryImpl(this._fruitApi);

  @override
  Future<Either<Exception, List<FruitEntity>>> getFruits() async {
    try {
      final fruitsModel = await _fruitApi.getFruits();
      final fruits = fruitsModel.toEntity();
      return Right(fruits);
    } on Exception catch (ex) {
      return Left(ex);
    }
  }
}
