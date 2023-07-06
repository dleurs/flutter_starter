import 'package:dartz/dartz.dart';
import 'package:flutter_starter/core/usecase/usecase.dart';
import 'package:flutter_starter/features/fruit/domain/entities/fruit_entity.dart';
import 'package:flutter_starter/features/fruit/domain/repository/fruit_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFruitUseCase extends BaseFutureWithEmptyParamsUseCase<Exception, List<FruitEntity>> {
  final FruitRepository _fruitRepository;
  GetFruitUseCase(this._fruitRepository);

  @override
  Future<Either<Exception, List<FruitEntity>>> call() async {
    return await _fruitRepository.getFruits();
  }
}
