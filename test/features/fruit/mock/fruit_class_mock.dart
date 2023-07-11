import 'package:flutter_starter/features/fruit/data/data_sources/fruit_api.dart';
import 'package:flutter_starter/features/fruit/domain/repository_abstract/fruit_repository.dart';
import 'package:flutter_starter/features/fruit/domain/usecases/get_fruit_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockFruitApi extends Mock implements FruitApi {}

class MockFruitRepository extends Mock implements FruitRepository {}

class MockGetFruitUseCase extends Mock implements GetFruitUseCase {}
