import 'package:dartz/dartz.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';

abstract class FruitRepository {
  Future<Either<Exception, List<FruitEntity>>> getFruits();
}
