import 'package:dartz/dartz.dart';
import '../entities/fruit_entity.dart';

abstract class FruitRepository {
  Future<Either<Exception, List<FruitEntity>>> getFruits();
}
