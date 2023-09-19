import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/usecase.dart';
import '../entities/fruit_entity.dart';
import '../repository_abstract/fruit_repository.dart';

@injectable
class GetFruitUseCase
    extends BaseFutureWithEmptyParamsUseCase<Exception, List<FruitEntity>> {
  GetFruitUseCase(this._fruitRepository);
  final FruitRepository _fruitRepository;

  @override
  Future<Either<Exception, List<FruitEntity>>> call() async {
    return _fruitRepository.getFruits();
  }
}
